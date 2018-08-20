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
namespace app\admin\validate;

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
    ];

    protected $scene = [
        'add'  => ['title', 'city_id', 'swept_volume', 'mileage', 'check_type_id', 'gearbox_id', 'brand_id'],
        'edit' => ['title', 'city_id', 'swept_volume', 'mileage', 'check_type_id', 'gearbox_id', 'brand_id'],
       
    ];
}