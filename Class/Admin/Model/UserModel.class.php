<?php
namespace Admin\Model;
use Think\Model;
class UserModel extends Model {
	
	public function checkLogin($userName,$pwd){
	
		$userInfo= $this->where(array('user_name'=>$userName,'password'=>$pwd,'status'=>array('eq',1)))->find();
	//	dump($userInfo);
		if($userInfo) { 
			session('user_name',$userName);
			session('user_id',$userInfo['id']);
		}
		return $userInfo;
	}
	
}