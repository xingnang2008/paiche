<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: Powerless < wzxaini9@gmail.com>
// +----------------------------------------------------------------------
namespace app\user\controller;

use cmf\lib\Storage;
use think\Validate;
use think\Image;
use cmf\controller\UserBaseController;
use app\user\model\UserModel;
use think\Db;

class AuctionController extends UserBaseController
{

    function _initialize()
    {
        parent::_initialize();
    }

    /**
     * 会员中心首页
     */
    public function index()
    {
        $request = $this->request;
        $auction_id = $request->param('id');
         
        $auctionModel = new AuctionModel();
        $auction = $auctionModel->where('id',$auction_id)->find();
        if($auction){
            $this->error("当前拍卖不存在!");
        }
        
        $user = cmf_get_current_user();
        $this->assign($user);

        $userId = cmf_get_current_user_id();

        $userModel = new UserModel();
        $user      = $userModel->where('id', $userId)->find();
       
        $this->assign('auction', $auction);
        $this->assign('user', $user);
        
        return $this->fetch();
    }

   

}