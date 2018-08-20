<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 小夏 < 449134904@qq.com>
// +----------------------------------------------------------------------
namespace app\user\validate;

use think\Validate;

class AuctionCarValidate extends Validate
{
    protected $rule = [
        'title' => 'require',
        'city_id'  => 'require',
        'swept_volume'  => 'require',
        'start_time'  => 'require',
        'end_time'  => 'require',
        'mileage'  => 'require',
        'start_money'  => 'require',
        'up_money'  => 'require',       
        'check_type_id'  => 'require',
        'gearbox_id'  => 'require',
        'brand_id'  => 'require', 
        'auction_id' => 'require',
        'check_place'  => 'require',
        'check_date'  => 'require',
        'trade_info[is_scraped]'  => 'require',
        'trade_info[is_prohibited]'  => 'require',
        'trade_info[is_Illegal]'  => 'require',
        'trade_info[is_equally]'  => 'require',
        'trade_info[is_smuggled]'  => 'require',
        'trade_info[is_seized]'  => 'require',
        
    ];
    protected $message = [
        'title.require' => '标题不能为空',
        'city_id.require'  => '城市不能为空',
        'swept_volume.require'  => '排量不能为空',
        'start_time.require' => '开拍时间不能为空',
        'end_time.require'   => '结束时间不能为空',
        'mileage.require'  => '里程不能为空',
        'start_money.require'   => '开拍金额不能为空',
        'up_money.require'  => '递增金额不能为空',        
        'check_type_id.require'  => '检测方不能为空',
        'gearbox_id.require'  => '变速箱类型不能为空',
        'brand_id.require'  => '品牌不能为空',
        'auction_id' => '车源号不能为空',
        'check_place'  => '检测地不能为空',
        'check_date'  => '检测日期不能为空',
        'trade_info[is_scraped]'  => '是否到强制报废标准',
        'trade_info[is_prohibited]'  => '是否是法律法规禁止车辆',
        'trade_info[is_Illegal]'  => '是否是违法车辆',
        'trade_info[is_equally]'  => '发动机号与证书号是否一致',
        'trade_info[is_smuggled]'  => '是否走私或非法拼装车辆',
        'trade_info[is_seized]'  => '是否行政查封车辆',
        
    ];

    protected $scene = [
        'add'  => [ 'city_id', 'swept_volume', 'mileage', 'check_type_id', 'gearbox_id', 'brand_id'],
        'edit' => [ 'city_id', 'swept_volume', 'mileage', 'check_type_id', 'gearbox_id', 'brand_id'],
        'add_trade'  => ['auction_id', 'check_place', 'check_date', 'trade_info[is_scraped]', 'trade_info[is_prohibited]', 'trade_info[is_Illegal]', 'trade_info[is_equally],trade_info[is_smuggled],trade_info[is_seized]'],
       
    ];
}