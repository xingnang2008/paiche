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
namespace app\admin\controller;

use cmf\controller\AdminBaseController;
use think\Db;

/**
 * Class UserController
 * @package app\admin\controller
 * @adminMenuRoot(
 *     'name'   => '拍卖管理',
 *     'action' => 'default',
 *     'parent' => 'user/AdminIndex/default',
 *     'display'=> true,
 *     'order'  => 10000,
 *     'icon'   => '',
 *     'remark' => '拍卖管理'
 * )
 */
class AuctionController extends AdminBaseController
{

    /**
     * 拍卖列表
     * @adminMenu(
     *     'name'   => '拍卖',
     *     'parent' => 'default',
     *     'display'=> true,
     *     'hasView'=> true,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '拍卖管理',
     *     'param'  => ''
     * )
     */
    public function index()
    {
        $admin_id = cmf_get_current_admin_id();
        /**搜索条件**/
        $title = $this->request->param('title');
        $city_id = trim($this->request->param('city_id'));        
        
        $status = trim($this->request->param('status'));
        $check_type_id = $this->request->param('check_type_id');
        $emission_standard_id = trim($this->request->param('emission_standard_id'));
        $brand_id = $this->request->param('brand_id');
        $gearbox_id = trim($this->request->param('gearbox_id'));
        $where = array();
        if ($title) {
            $where['title'] = ['like', "%$title%"];
        }
        if ($city_id) {
            $where['city_id'] = ['eq', $city_id];
        }
        if ($status) {
            $where['status'] = ['eq', $status];
        }
        if ($check_type_id) {
            $where['check_type_id'] = ['eq', $check_type_id];
        }
        if ($emission_standard_id) {
            $where['emission_standard_id'] = ['egt', $emission_standard_id];
        }
        if ($brand_id) {
            $where['brand_id'] = ['elt', $brand_id];
        }
        if ($gearbox_id) {
            $where['gearbox_id'] = ['eq', $gearbox_id];
        }

       
        $cars = Db::name('AuctionCars')
            ->where($where)
            ->order("id DESC")
            ->paginate(10);
        $cars->appends(['title' => $title, 'city_id' => $city_id, 'status' => $status, 'check_type_id' => $check_type_id, 
            'emission_standard_id' => $emission_standard_id, 'brand_id' => $brand_id, 'gearbox_id' => $gearbox_id]);
        // 获取分页显示
        $page = $cars->render();

      
        $this->assign("page", $page);
        $this->assign("cars", $cars);
        return $this->fetch();
    }

    /**
     * 拍卖添加
     * @adminMenu(
     *     'name'   => '拍卖添加',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> true,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '拍卖添加',
     *     'param'  => ''
     * )
     */
    public function add()
    {
        $admin_id = cmf_get_current_admin_id();
     
        $roles = Db::name('role_user')->field("role_id")->where(['user_id' => $admin_id])->order("id DESC")->find();
        if($roles['role_id'] !== 3){
            $this->error("您的权限不够");
        }
        $this->assign("roles", $roles);
        return $this->fetch();
    }

    /**
     * 拍卖添加提交
     * @adminMenu(
     *     'name'   => '拍卖添加提交',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '拍卖添加提交',
     *     'param'  => ''
     * )
     */
    public function addPost()
    {
        $admin_id = cmf_get_current_admin_id();
        
       
         
        $roles = Db::name('role_user')->field("role_id")->where(['user_id' => $admin_id])->find();
        if($roles['role_id'] !== 3){
            $this->error("您的权限不够");
        }
        if ($this->request->isPost()) {
                $result = $this->validate($this->request->param(), 'AuctionCar.add');
                if ($result !== true) {
                    $this->error($result);
                } else {
                        $arrData      = $this->request->post();
                        $user = Db::name('user')->field("user_nickname")->where(['id' => $admin_id])->find();
                        $arrData['operator_id']=$admin_id;
                        $arrData['operator']=$user['user_nickname'];
                        $time = time();
                        $arrData['in_date']=date("Y-m-d H:i:s",$time);
                        $this->error(var_export($arrData));
                       Db::name('AuctionCars')->insert($arrData);
                        
                        $this->success("添加成功！", url("auction/add"));
                    
                }
           

        }
    }

    /**
     * 拍卖编辑
     * @adminMenu(
     *     'name'   => '拍卖编辑',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> true,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '拍卖编辑',
     *     'param'  => ''
     * )
     */
    public function edit()
    {
        $id    = $this->request->param('id', 0, 'intval');
        $roles = DB::name('role')->where(['status' => 1])->order("id DESC")->select();
        $this->assign("roles", $roles);
        $role_ids = DB::name('RoleUser')->where(["user_id" => $id])->column("role_id");
        $this->assign("role_ids", $role_ids);

        $user = DB::name('user')->where(["id" => $id])->find();
        $this->assign($user);
        return $this->fetch();
    }

    /**
     * 拍卖编辑提交
     * @adminMenu(
     *     'name'   => '拍卖编辑提交',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '拍卖编辑提交',
     *     'param'  => ''
     * )
     */
    public function editPost()
    {
        if ($this->request->isPost()) {
            if (!empty($_POST['role_id']) && is_array($_POST['role_id'])) {
                if (empty($_POST['user_pass'])) {
                    unset($_POST['user_pass']);
                } else {
                    $_POST['user_pass'] = cmf_password($_POST['user_pass']);
                }
                $role_ids = $this->request->param('role_id/a');
                unset($_POST['role_id']);
                $result = $this->validate($this->request->param(), 'User.edit');

                if ($result !== true) {
                    // 验证失败 输出错误信息
                    $this->error($result);
                } else {
                    $result = DB::name('user')->update($_POST);
                    if ($result !== false) {
                        $uid = $this->request->param('id', 0, 'intval');
                        DB::name("RoleUser")->where(["user_id" => $uid])->delete();
                        foreach ($role_ids as $role_id) {
                            
                            DB::name("RoleUser")->insert(["role_id" => $role_id, "user_id" => $uid]);
                        }
                        $this->success("保存成功！");
                    } else {
                        $this->error("保存失败！");
                    }
                }
            } else {
                $this->error("请为此用户指定角色！");
            }

        }
    }

    /**
     * 管理员个人信息修改
     * @adminMenu(
     *     'name'   => '个人信息',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> true,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '管理员个人信息修改',
     *     'param'  => ''
     * )
     */
    public function userInfo()
    {
        $id   = cmf_get_current_admin_id();
        $user = Db::name('user')->where(["id" => $id])->find();
        $this->assign($user);
        return $this->fetch();
    }

    /**
     * 管理员个人信息修改提交
     * @adminMenu(
     *     'name'   => '管理员个人信息修改提交',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '管理员个人信息修改提交',
     *     'param'  => ''
     * )
     */
    public function userInfoPost()
    {
        if ($this->request->isPost()) {

            $data             = $this->request->post();
            $data['birthday'] = strtotime($data['birthday']);
            $data['id']       = cmf_get_current_admin_id();
            $create_result    = Db::name('user')->update($data);;
            if ($create_result !== false) {
                $this->success("保存成功！");
            } else {
                $this->error("保存失败！");
            }
        }
    }

    /**
     * 管理员删除
     * @adminMenu(
     *     'name'   => '管理员删除',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '管理员删除',
     *     'param'  => ''
     * )
     */
    public function delete()
    {
        $id = $this->request->param('id', 0, 'intval');
        if ($id == 1) {
            $this->error("最高管理员不能删除！");
        }

        if (Db::name('user')->delete($id) !== false) {
            Db::name("RoleUser")->where(["user_id" => $id])->delete();
            $this->success("删除成功！");
        } else {
            $this->error("删除失败！");
        }
    }

    /**
     * 停用管理员
     * @adminMenu(
     *     'name'   => '停用管理员',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '停用管理员',
     *     'param'  => ''
     * )
     */
    public function ban()
    {
        $id = $this->request->param('id', 0, 'intval');
        if (!empty($id)) {
            $result = Db::name('user')->where(["id" => $id, "user_type" => 1])->setField('user_status', '0');
            if ($result !== false) {
                $this->success("管理员停用成功！", url("user/index"));
            } else {
                $this->error('管理员停用失败！');
            }
        } else {
            $this->error('数据传入失败！');
        }
    }

    /**
     * 启用管理员
     * @adminMenu(
     *     'name'   => '启用管理员',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '启用管理员',
     *     'param'  => ''
     * )
     */
    public function cancelBan()
    {
        $id = $this->request->param('id', 0, 'intval');
        if (!empty($id)) {
            $result = Db::name('user')->where(["id" => $id, "user_type" => 1])->setField('user_status', '1');
            if ($result !== false) {
                $this->success("管理员启用成功！", url("user/index"));
            } else {
                $this->error('管理员启用失败！');
            }
        } else {
            $this->error('数据传入失败！');
        }
    }
}