<?php

namespace app\admin\controller\development;


use app\common\controller\Backend;
use app\admin\command\Api\library\Builder;
use think\Exception;

/**
 * API文档生成
 * @author amplam
 * @date 2020年3月10日
 */
class Document extends Backend
{

    /**
     * 模型对象
     */
    protected $model = null;
    protected $noNeedRight = ["*"];
    protected $searchFields = '';

    public function _initialize()
    {
        parent::_initialize();
    }

    /**
     * 生成接口文档
     * @throws Exception
     */
    public function create($name = null)
    {
        $param = $this->request->param('row/a');
        $param['force'] = $param['force'] ?? true;
        $addon_info = get_addon_info($name);
        if(!$addon_info){
            //不存在就生成一些默认数据，可以提供给不是插件生成文档用
            $addon_info['title']=__("我的网站");
        }

        if ($this->request->isPost()) {
            $apiDir = APP_PATH . DS . 'admin' . DS . 'command' . DS . 'Api' . DS;
            $param['language'] = $param['language'] ?? 'zh-cn';
            $langFile = $apiDir . 'lang' . DS . $param['language'] . '.php';
            if (!is_file($langFile)) {
                $this->error("语言文件不存在");
            }
            $lang = include_once $langFile;
            // 目标目录
            $output_dir = ROOT_PATH . 'public' . DS . 'document' . DS;
            if (!is_dir($output_dir)) {
                @mkdir($output_dir, 0755, true);
            }
            $output_file = $output_dir . ($param['output'] ?? $name . '.html');
            if (is_file($output_file) && !$param['force']) {
                $this->error("该接口文档已经存在，必须要选择覆盖才可以生成");
            }
            // 模板文件
            $template_dir = $apiDir . 'template' . DS;
            $template_file = $template_dir . 'index.html';
            if (!is_file($template_file)) {
                $this->error("生成接口的模板文件不存在");
            }
            // 标题
            $title = $param['title'] ?$param['title']: $addon_info['title'];
            // 作者
            $author = isset($addon_info['author']) ?$addon_info['author']: "admin";
            //
            $controllerDir = $param['controller'] ?? 'controller';

            if (!is_dir($controllerDir)) {
                $this->error("不存在目录[{$controllerDir}]");
            }

            if (version_compare(PHP_VERSION, '7.0.0', '<')) {
                if (extension_loaded('Zend OPcache')) {
                    $configuration = opcache_get_configuration();
                    $directives = $configuration['directives'];
                    $configName = request()->isCli() ? 'opcache.enable_cli' : 'opcache.enable';
                    if (!$directives[$configName]) {
                        $this->error("Please make sure {$configName} is turned on, Get help:https://forum.fastadmin.net/d/1321");
                    }
                } else {
                    $this->error("Please make sure opcache already enabled, Get help:https://forum.fastadmin.net/d/1321");
                }
            }

            $files = new \RecursiveIteratorIterator(
                new \RecursiveDirectoryIterator($controllerDir),
                \RecursiveIteratorIterator::LEAVES_ONLY
            );

            foreach ($files as $name => $file) {
                if (!$file->isDir() && $file->getExtension() == 'php') {
                    $filePath = $file->getRealPath();
                    $classes[] = $this->get_class_from_file($filePath);
                }
            }
            if (!isset($classes)||!$classes) $this->error(__("生成失败，目录下没有可生成的文件"));
            $classes = array_unique(array_filter($classes));

            $config = [
                'title' => $title,
                'author' => $author,
                'description' => '',
                'apiurl' => $param['apiurl'] ?$param['apiurl'] :'',
                'language' => $param['language'],
                'sitename'=>$title
            ];
            $builder = new Builder($classes);
            $content = $builder->render($template_file, ['config' => $config, 'lang' => $lang]);

            if (!file_put_contents($output_file, $content)) {
                $this->error("Cannot save the content to ' . $output_file");
            }
            $output_url = "/document/" . ($param['output'] ?$param['output']: rand(1000,10000) . '.html');
            $this->success(__("生成成功"), $output_url);
        }
        $addon_info['controller_dir'] = ADDON_PATH . $name . DS.'controller'. DS;//生成默认的路径
        $addon_info['app_path'] = ROOT_PATH;//生成默认的路径

        return $this->view->fetch('',['row' => $addon_info]);
    }

    /**
     * get full qualified class name
     *
     * @param string $path_to_file
     * @return string
     * @author JBYRNE http://jarretbyrne.com/2015/06/197/
     */
    protected function get_class_from_file($path_to_file)
    {
        //Grab the contents of the file
        $contents = file_get_contents($path_to_file);

        //Start with a blank namespace and class
        $namespace = $class = "";

        //Set helper values to know that we have found the namespace/class token and need to collect the string values after them
        $getting_namespace = $getting_class = false;

        //Go through each token and evaluate it as necessary
        foreach (token_get_all($contents) as $token) {

            //If this token is the namespace declaring, then flag that the next tokens will be the namespace name
            if (is_array($token) && $token[0] == T_NAMESPACE) {
                $getting_namespace = true;
            }

            //If this token is the class declaring, then flag that the next tokens will be the class name
            if (is_array($token) && $token[0] == T_CLASS) {
                $getting_class = true;
            }

            //While we're grabbing the namespace name...
            if ($getting_namespace === true) {

                //If the token is a string or the namespace separator...
                if (is_array($token) && in_array($token[0], [T_STRING, T_NS_SEPARATOR])) {

                    //Append the token's value to the name of the namespace
                    $namespace .= $token[1];
                } elseif ($token === ';') {

                    //If the token is the semicolon, then we're done with the namespace declaration
                    $getting_namespace = false;
                }
            }

            //While we're grabbing the class name...
            if ($getting_class === true) {

                //If the token is a string, it's the name of the class
                if (is_array($token) && $token[0] == T_STRING) {

                    //Store the token's value as the class name
                    $class = $token[1];

                    //Got what we need, stope here
                    break;
                }
            }
        }

        //Build the fully-qualified class name and return it
        return $namespace ? $namespace . '\\' . $class : $class;
    }


}
