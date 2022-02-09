define(['jquery', 'bootstrap', 'backend', 'table', 'form', 'template'], function ($, undefined, Backend, Table, Form, Template) {
    var Controller = {

        create: function () {
            Form.api.bindevent($("form[role=form]"), function(data, ret){
                //parent.Layer.close(parent.Layer.getFrameIndex(window.name));

                var content="接口文档连接：<a href='"+ret.url+"' target=\"view_frame\">点击打开</a>";
                Layer.confirm(content, {
                    btn: ['关闭'],//按钮，
                    title:"生成成功。",
                }, function(){
                    parent.Layer.closeAll();
                });
                return false;
            }, function(data, ret){
                Toastr.error("失败");
            }, function(success, error){
                return true;
            });

        },
        api: {
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            },

        }
    };
    return Controller;
});