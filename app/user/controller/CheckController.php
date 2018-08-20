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

class CheckController extends UserBaseController
{
    /**
     * 个人中心我的资金列表
     */
    public function index()
    {
        $user = cmf_get_current_user();

        $financeModel = new FinanceModel();
        $finance    = $financeModel->where(['user_id' => cmf_get_current_user_id()])
            ->order('action_time DESC')->paginate();
        $this->assign($user);
        $this->assign("page", $finance->render());
        $this->assign("finance", $finance);
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
//      $check_info_array= array();
//       if($check_info){          
//           $check_info_array = unserialize($check_info);
//       }

      $this->assign("check_info_array",$check_info);
      $this->assign("trade_info",unserialize($check_info['trade_info']));
      $this->assign("exterior_info",unserialize($check_info['exterior_info']));
     
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
            if (!empty($photo_names) && !empty($photo_urls)) {
                $arrData['pics'] = [];
                foreach ($photo_urls as $key => $url) {
                    $photoUrl = cmf_asset_relative_url($url);
                    array_push( $arrData['pics'], ["url" => $photoUrl, "name" => $photo_names[$key]]);
                }
            }
            $arrData['pics'] = serialize( $arrData['pics']);
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
    
            $result = $this->validate($this->request->param(), 'AuctionCar.add_trade');
            $result =true;
            if ($result !== true) {
                    $this->error($result);
                } else {
                        $trade_info                 = $this->request->post('trade_info/a');
                        $data['check_date']         = $this->request->post('check_date');
                        $data['check_place']        = $this->request->post('check_place');
                        $data['auction_id']         = $this->request->post('auction_id');
                        
                        $data['operator_id']        = $admin_id;
                        $data['operator']           = $user['user_nickname'];
                        $photo_names                = $this->request->post('photo_names/a');
                        $photo_urls                 =$this->request->post('photo_urls/a');
                        
                        if (!empty($photo_names) && !empty($photo_urls)) {
                            $pics = [];
                            foreach ($photo_urls as $key => $url) {
                                $photoUrl = cmf_asset_relative_url($url);
                                array_push( $pics, ["url" => $photoUrl, "name" => $photo_names[$key]]);
                            }
                        }
                        
                        $trade_info['pics']         =  $pics;
                        $data['trade_info']         = serialize($trade_info);
                        
                        $user = Db::name('check_infos')->insert($data);
                       
                        $this->success("添加成功！", url("user/check/add",array("auction_id"=>$data['auction_id'])));
                    
                }
             
    
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
                 
                $data['auction_id']         = $this->request->post('auction_id');
                
                
                 
                 
                $data[$sub_info]         = serialize($trade_info);
                $auction_id = $data['auction_id'];
                $check_info= Db::name('check_infos')->where(["auction_id" =>$auction_id])->find();
                $checkInfosModel =new CheckInfosModel();
                $checkInfosModel->allowField([$sub_info])->save($data, ['id'=>$check_info['id']]);
                 
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