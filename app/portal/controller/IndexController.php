<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 老猫 <thinkcmf@126.com>
// +----------------------------------------------------------------------
namespace app\portal\controller;

use cmf\controller\HomeBaseController;
use app\portal\model\AuctionCarsModel;
use app\portal\model\CarInfoModel;
use think\Db;

class IndexController extends HomeBaseController
{
    public function index()
    {
        if(cmf_is_mobile()){
            return $this->fetch(':mobile/index');
        }else{
            
        return $this->fetch(':index');
        }
        
    }
    public function main()
    {
        $ip = get_client_ip(); //获取当前用户的ip
       $auctionModel = new AuctionCarsModel();
       $where=array();
       $where['status'] ='2';
        $auction_list_paiing = $auctionModel->where($where)->select();
        $count_paiing = count($auction_list_paiing);
        $this->assign("count_paiing",$count_paiing);
        $this->assign("auction_list_paiing",$auction_list_paiing);
       
       $open_where['status'] ='1';
       $auction_list_opening = $auctionModel->where($open_where)->select();
       $count_opening = count($auction_list_opening);
       $this->assign("count_opening",$count_opening);
       $this->assign("auction_list_opening",$auction_list_opening);
       
       $end_where['status'] ='4';
       $auction_list_end = $auctionModel->where($end_where)->select();
        $count_end = count($auction_list_end);
        $this->assign("count_end",$count_end);
       $this->assign("auction_list_end",$auction_list_end);
        if(cmf_is_mobile()){
            return $this->fetch(':mobile/main');
        }
        
    }
 
    public function car()
    {        
        $id    = $this->request->param('id', 0, 'intval');
        $auctionModel = new AuctionCarsModel();
        $carinfo = Db::name("auction_cars")->where("id",$id)->find();
         $carInfoModel = new CarInfoModel();
       
            $aid = $carinfo['auction_id'];
            $mini_info = Db::name("car_info")->where(["auction_id" => $aid])->find();
           if($mini_info){
         
            $carinfo['use_type']=$mini_info['use_type'];
            $carinfo['pics']=unserialize($mini_info['pics']);
            $carinfo['seats']=$mini_info['seats'];
            $carinfo['color']=$mini_info['color'];
            $carinfo['oil_type']=$mini_info['oil_type'];

            $carinfo['intake_type']=$mini_info['intake_type'];
            $carinfo['insurance']=$mini_info['insurance'];
            $carinfo['insurance_date']=$mini_info['insurance_date'];
            $carinfo['inspection_date']=$mini_info['inspection_date'];

            $carinfo['change_times']=$mini_info['change_times'];
           }else{
               $carinfo['use_type']="-";
               $carinfo['pics']=unserialize($mini_info['pics']);
               $carinfo['seats']="-";
               $carinfo['color']="-";
               $carinfo['oil_type']="-";
               
               $carinfo['intake_type']="-";
               $carinfo['insurance']="-";
               $carinfo['insurance_date']="-";
               $carinfo['inspection_date']="-";
               
               $carinfo['change_times']="-";
           }
           //检测
           $check_info = Db::name("check_infos")->where(["auction_id" => $aid])->find();
           
           //交易信息检测 
           $tradeinfo = unserialize($check_info['trade_info']);
           $count_trade_ok = 0;
           $count_trade_no = 0;
        
           foreach($tradeinfo as $x=>$x_value) {
             
               if($x_value == 1){
                   $count_trade_ok++;
               }elseif ($x_value == 2){
                   $count_trade_no++;
               }
           }
           $trade_pics = $tradeinfo['pics'];
          
           $this->assign("trade_pics",$trade_pics);
           $this->assign("count_trade_ok",$count_trade_ok);
           $this->assign("count_trade_no",$count_trade_no);
         
           //车身检测
           $exterior_info=unserialize($check_info['exterior_info']);
           
           
           
           
           
           $this->assign("carinfo",$carinfo);
           return $this->fetch(':mobile/car');
       
    
    }
    public function details()
    {
    
        return $this->fetch(':mobile/details');
         
    
    }
    public function market()
    {
    
        return $this->fetch(':mobile/market');
         
    
    }
    public function mcar()
    {
    
        return $this->fetch(':mobile/mcar');
         
    
    }
}
