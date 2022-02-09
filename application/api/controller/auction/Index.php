<?php

namespace app\api\controller\auction;

use app\common\controller\qyg\Api;

class Index extends Api
{
    public $noNeedLogin = ['*'];

    public function index(){

        echo 1;
    }
}