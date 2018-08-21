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


use app\user\model\FinanceModel;
use think\Validate;
use cmf\controller\UserBaseController;
use app\portal\model\CarInfoModel;
use app\portal\model\AuctionCarsModel;
use app\admin\model\CheckPointModel;
use app\user\model\CheckInfosModel;
use think\Model;
use think\DB;

define("NEW_CHECK_STATUS", 1);
define("UP_CHECK_STATUS", 2);
define("DONE_CHECK_STATUS", 3);



class CheckController extends UserBaseController
{
    /**
     * 个人中心我的资金列表
     */
    
    public function index()
    {
        $user = cmf_get_current_user(); 
        $this->check_role($user);
        
       $checkInfosModel = new CheckInfosModel();
       $where = array();
       $where['operator_id'] = $user['id'];
       $where['status'] = NEW_CHECK_STATUS;
       
       $new_list = $checkInfosModel->where($where)->select();
       
       $where_up['operator_id'] = $user['id'];
       $where_up['status'] = UP_CHECK_STATUS;
       $up_list = $checkInfosModel->where($where_up)->select();
       
       $where_done['operator_id'] = $user['id'];
       $where_done['status'] = DONE_CHECK_STATUS;
       $done_list = $checkInfosModel->where($where_done)->select();
        
        $this->assign("new_list",$new_list);
        $this->assign("up_list",$up_list);
        $this->assign("done_list",$done_list);
       
        $this->assign("count_new",count($new_list));
        $this->assign("count_up",count($up_list));
        $this->assign("count_done",count($done_list));
         
        return $this->fetch();
    }

    /**
     * 用户充值
     */
    public function add()
    {
        $user = cmf_get_current_user();
     
      $this->check_role($user);
      
      $auction_id    = $this->request->param('auction_id');
      
     
  
      
       
      //拍卖相关
      $auction = Db::name('AuctionCars')->where(['auction_id' => $auction_id])->find();
      if(!$auction_id){
          $auction_id = $this->createAuctionId();
      }
      $this->assign("auction",$auction);
      
      //基本信息
      $car_info= Db::name('car_info')->where(['auction_id' => $auction_id])->find();
      if($car_info){
          $car_info_pics = unserialize($car_info['pics']);
          $this->assign("car_info_pics",$car_info_pics);
      }
      $this->assign("car_info",$car_info);
       
      //交易信息
      $check_info= Db::name('check_infos')->where(['auction_id' => $auction_id])->find();
       if($check_info){          
          $check_info['trade_info'] = unserialize($check_info['trade_info']);
          $check_info['exterior_info'] = unserialize($check_info['exterior_info']);
      
       }

      $this->assign("check_info_array",$check_info);
     
     
      //检测参数
      $checkPointModel = new CheckPointModel();
      $top_check_point_list = $checkPointModel->where(["pid"=>0])->select();
      
      foreach ($top_check_point_list as $k=>$v){
          $point_id = $v['id'];
          $son_point = $checkPointModel->where(["pid"=>$point_id])->select();
          $top_check_point_list[$k]['son'] =  $son_point;
      
      }
      $this->assign("top_check_point_list",$top_check_point_list);
      $this->assign("car_info",$car_info);
      
      
      
      
      
      
      $this->assign("auction_id",$auction_id);
     
        return $this->fetch();
    }
    /**
     * 添加基本信息
     */
    public function addPost()
    {
        $user = cmf_get_current_user();         
        $this->check_role($user);
        $admin_id = $user['id'];
         if ($this->request->isPost()) {
            
                $result = $this->validate($this->request->param(), 'AuctionCar.add');
                if ($result !== true) {
                    $this->error($result);
                } else {
                        $arrData      = $this->request->post();
                       
                       
                        $arrData['operator_id']=$admin_id;
                        $arrData['operator']=$user['user_nickname'];
                       
                        $time = time();
                        $arrData['in_date']=date("Y-m-d H:i:s",$time);
                        $auction_info= Db::name('AuctionCars')->where(['auction_id' => $arrData['auction_id']])->find();
                        $auctionModel = new AuctionCarsModel();
                        if($auction_info){
                        
                            $auctionModel->allowField(true)->save($arrData,['id'=>$auction_info['id']]);
                        }else{
                           $auctionModel->insert($arrData);
                            
                        }
                         
                        
                       
                       
                        $this->success("添加成功！", url("user/check/add",array("auction_id"=>$arrData['auction_id'])));
                    
                }
           

        }
    }
    
    public function add_car_info_post(){
        
        $user = cmf_get_current_user();
        $this->check_role($user);
        $admin_id = $user['id'];
        if ($this->request->isPost()) {
            
            $arrData      = $this->request->post();
            $photo_names  = $this->request->post('photo_names/a');
            $photo_urls   =$this->request->post('photo_urls/a');
            $file_names  = $this->request->post('file_names/a');
            $file_urls   =$this->request->post('file_urls/a');
            
            if (!empty($photo_names) && !empty($photo_urls)) {
                $arrData['pics'] = [];
                foreach ($photo_urls as $key => $url) {
                    $photoUrl = cmf_asset_relative_url($url);
                    array_push( $arrData['pics'], ["url" => $photoUrl, "name" => $photo_names[$key]]);
                }
            }
            
            if (!empty($file_names) && !empty($file_urls)) {
                 $arrData['vedio_info'] = [];
                foreach ($file_urls as $key => $url) {
                    $fileUrl = cmf_asset_relative_url($url);
                    array_push( $arrData['vedio_info'], ["url" => $fileUrl, "name" => $file_names[$key]]);
                }
            }
            
            $arrData['pics'] = serialize( $arrData['pics']);
            $arrData['vedio_info'] = serialize($arrData['vedio_info']);
            
            $car_info= Db::name('car_info')->where(['auction_id' => $arrData['auction_id']])->find();
            $carInfoModel = new CarInfoModel();
            if($car_info){
                
                $carInfoModel->allowField(true)->save($arrData,['id'=>$car_info['id']]);
            }else{
            
                $carInfoModel->allowField(true)->save($arrData);
            }
           
            
            $this->success("添加成功！", url("user/check/add",array("auction_id"=>$arrData['auction_id'])));
        }
    }
    
    /**
     * 添加交易信息
     */
    public function add_trade_post()
    {
        $user = cmf_get_current_user();
        $this->check_role($user);
        $admin_id = $user['id'];
        if ($this->request->isPost()) {
    
           
                        $arrData['trade_info']         = $this->request->post('trade_info/a');
                        $arrData['check_date']         = $this->request->post('check_date');
                        $arrData['check_place']        = $this->request->post('check_place');
                        $arrData['auction_id']         = $this->request->post('auction_id');
                        
                        $arrData['operator_id']        = $admin_id;
                        $arrData['operator']           = $user['user_nickname'];
                        $photo_names                = $this->request->post('photo_names/a');
                        $photo_urls                 =$this->request->post('photo_urls/a');
                        
                        if (!empty($photo_names) && !empty($photo_urls)) {
                            $pics = [];
                            foreach ($photo_urls as $key => $url) {
                                $photoUrl = cmf_asset_relative_url($url);
                                array_push( $pics, ["url" => $photoUrl, "name" => $photo_names[$key]]);
                            }
                        $arrData['trade_info']['pics'] =  $pics;
                        }
                        $arrData['trade_info'] = serialize($arrData['trade_info']) ;
                        $checkInfosModel = new CheckInfosModel();
                        $check_info= $checkInfosModel->where(['auction_id' => $arrData['auction_id']])->find();
                       
                        if($check_info){
                        
                            $checkInfosModel->allowField(true)->save($arrData,['id'=>$check_info['id']]);
                        }else{
                        
                            $checkInfosModel->allowField(true)->save($arrData);
                        }
                       
                       
                        $this->success("添加成功！", url("user/check/add",array("auction_id"=>$arrData['auction_id'])));
                    
               
             
    
        }
    }
    public function add_info_post()
    {
        $user = cmf_get_current_user();
        $this->check_role($user);
        $admin_id = $user['id'];
        
        
        
        if ($this->request->isPost()) {
    
    
                $sub_info = $this->request->post('sub_info');
               
                $trade_info                 = $this->request->post($sub_info.'/a');
                 
                $arrData['auction_id']         = $this->request->post('auction_id');
                
                
                 
                 
                $arrData[$sub_info]         = serialize($trade_info);
                $auction_id = $arrData['auction_id'];
                $check_info= Db::name('check_infos')->where(["auction_id" =>$auction_id])->find();
                $checkInfosModel =new CheckInfosModel();
                $checkInfosModel->allowField([$sub_info])->save($arrData, ['id'=>$check_info['id']]);
                 
                $this->success("添加成功！", url("user/check/add",array("auction_id"=>$auction_id)));
    
           
             
    
        }
    }
    function createAuctionId(){
        $time = time();
        $end= mt_rand(100, 999);
        
        $id = $time.$end;
        return $id;
    }
    function check_role($user) {
       
        $roles = Db::name('role_user')->field("role_id")->where(['user_id' => $user['id']])->find();
        if($roles['role_id'] !== 3){
            $this->error("您的权限不够");
        }
    }
    
}