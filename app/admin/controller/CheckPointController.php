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

use app\admin\model\AdminMenuModel;
use app\admin\model\CheckPointModel;
use cmf\controller\AdminBaseController;

use think\Db;
use tree\Tree;
use mindplay\annotations\Annotations;

class CheckPointController extends AdminBaseController
{
    
    protected $checkPointModel;
    
    
    
    public function _initialize()
    
    {
        
        parent::_initialize();
        
        $this->checkPointModel = new CheckPointModel();
        
    }
    /**
     * 后台检测项目管理
     * 用于管理检测的项
     */
    public function index($id='')
    
    {
        
        if ($id){
            
            $where["pid"]=$id;
            
            $parent=$this->checkPointModel->where(array('id'=>$id))->find();
            
            $this->assign("parent",$parent);
            
        }else{
            
            $where["pid"]=0;
            
            $this->assign("parent",null);
            
        }
        
        $point_list=$this->checkPointModel->where($where)->order("ID ASC")->select();
        
        $this->assign("point_list",$point_list);
        
        return $this->fetch();
        
    }



    /**
    
    * 添加检测项目
    
    * @param string $pid
    
    * @return mixed
    
    */
    
    public function add($pid = '')
    
    {
        
        if ($pid){
            
            $where["id"]=$pid;
            
            $info=$this->checkPointModel->where($where)->find();
            
            $point_list=$this->checkPointModel->where(array('pid'=>$info["pid"]))->select();
            
            $this->assign("point_list",$point_list);
            
        }else{
            
            $point_list=$this->checkPointModel->where(array('pid'=>0))->select();
            
            $this->assign("point_list",$point_list);
            
        }
        
        return $this->fetch('add', ['pid' => $pid]);
        
    }
    /**
    
    * 保存检测项目
    
    * @param string $pid
    
    * @return mixed
    
    */

    public function save()
    
    {
        
        if ($this->request->isPost()) {
            
            $data            = $this->request->param();
            
            if ($this->checkPointModel->allowField(true)->save($data)) {
                
                $this->success('保存成功');
                
            } else {
                
                $this->error('保存失败');
                
            }
            
        }
        
    }
    /**
    
    * 编辑栏目
    
    * @param $id
    
    * @return mixed
    
    */
    
    public function edit($id)
    
    {
        
        $point = $this->checkPointModel->find($id);
        
        $info=$this->checkPointModel->find($point['pid']);
       
    
          $top=$this->checkPointModel->where(array('pid'=>0))->select();
            
        
        
        
        $this->assign("top",$top);
        
        
        
        return $this->fetch('edit', ['point' => $point]);
        
    }
    
    
    
    /**
    
    * 更新栏目
    
    * @param $id
    
    */
    
    public function update($id)
    
    {
        
        if ($this->request->isPost()) {
            
            $data            = $this->request->param();
            
            if ($this->checkPointModel->allowField(true)->save($data, $id) !== false) {
                
                $this->success('更新成功');
                
            } else {
                
                $this->error('更新失败');
                
            }
            
        }
        
    }
    
    
    
    /**
    
    * 删除栏目
    
    * @param $id
    
    */
    
    public function delete($id)
    
    {
        
        $category = $this->checkPointModel->where(['pid' => $id])->find();
        
        
        
        if (!empty($category)) {
            
            $this->error('此项目下存在子项，不可删除');
            
        }
        
        if ($this->checkPointModel->destroy($id)) {
            
            $this->success('删除成功');
            
        } else {
            
            $this->error('删除失败');
            
        }
        
    }
}