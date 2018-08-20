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
use app\user\model\UserModel;
use think\Model;
use think\DB;

class FinanceController extends UserBaseController
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
    public function recharge()
    {
        $user = cmf_get_current_user();
        $this->assign($user);
        return $this->fetch('recharge');
    }
    /**
     * 用户充值
     */
    public function rechargePost()
    {
    if ($this->request->isPost()) {
            $validate = new Validate([
                'money' => 'is:number|gt:0',
                'action_type' =>'eq:1',
            ]);
            $validate->message([
                'money.is'   => lang('RECHARGE_IS_NOT_NUMBER'),
                'money.gt'         => lang('RECHARGE_NUMBER_ERROR'),
                'action_type.eq'   => lang('ACTION_TYPE_ERROR'),
            ]);

            $data = $this->request->post();
            if (!$validate->check($data)) {
                $this->error($validate->getError());
            }
            $financeModel = new FinanceModel();
            $userDate = array();
            $user = cmf_get_current_user();
            $userDate['balance'] = $user['balance']+$data['money'];
            $data['remain'] = $userDate['balance'];
            $userModel = new UserModel();
            
            Db::startTrans();
            try{
                 $rechargData =$financeModel->allowField(true)->save($data);
                 $changeUserInfo= $userModel->allowField(["balance"])->save($userDate);
              
                Db::commit();
                $this->success(lang('RECHARGE_SUCCESS'));
            } catch (\Exception $e) {
                // 回滚事务
                Db::rollback();
                $this->error(lang('RECHARGE_ERROR'));
            }
           
        } else {
            $this->error(lang('ERROR'));
        }
    }
    /*
      if ($this->request->isPost()) {
            $validate = new Validate([
                'user_nickname' => 'max:32',
                'sex'           => 'between:0,2',
                'birthday'      => 'dateFormat:Y-m-d|after:-88 year|before:-1 day',
                'user_url'      => 'url|max:64',
                'signature'     => 'max:128',
            ]);
            $validate->message([
                'user_nickname.max'   => lang('NICKNAME_IS_TO0_LONG'),
                'sex.between'         => lang('SEX_IS_INVALID'),
                'birthday.dateFormat' => lang('BIRTHDAY_IS_INVALID'),
                'birthday.after'      => lang('BIRTHDAY_IS_TOO_EARLY'),
                'birthday.before'     => lang('BIRTHDAY_IS_TOO_LATE'),
                'user_url.url'        => lang('URL_FORMAT_IS_WRONG'),
                'user_url.max'        => lang('URL_IS_TO0_LONG'),
                'signature.max'       => lang('SIGNATURE_IS_TO0_LONG'),
            ]);

            $data = $this->request->post();
            if (!$validate->check($data)) {
                $this->error($validate->getError());
            }
            $editData = new UserModel();
            if ($editData->editData($data)) {
                $this->success(lang('EDIT_SUCCESS'), "user/profile/center");
            } else {
                $this->error(lang('NO_NEW_INFORMATION'));
            }
        } else {
            $this->error(lang('ERROR'));
        }
     */
}