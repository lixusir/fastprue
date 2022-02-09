<?php

namespace app\common\library\qyg;

use think\Config;
use think\Env;

class Auth extends \app\common\library\Auth
{
    public function __construct($options = []){
        if ($config = Config::get('user')) {
            $this->config = array_merge($this->config, $config);
        }
        $this->options = array_merge($this->config, $options);
        $this->keeptime = Env::get('token.expire',86400);
    }
}