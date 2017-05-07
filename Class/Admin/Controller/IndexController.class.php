<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function login(){
    	$this->display();
    }
    
    public function doLogin(){
    	$user_name=I('user_name');
    	$password=I('password');
    	$code=I('verifyImg');
    	$cV=$this->check_verify($code);
        $cV==true?$result=D('User')->checkLogin($user_name,$password):$this->error('验证码错误');   	
    	if($result) $this->success('登录成功！',U('AdminArticle/articleAll'),5);
    	else $this->error('登录失败！','',3);
    }
  /*  验证码图片*/
    public function verify(){
            ob_clean();
            $Verify = new \Think\Verify();  
            $Verify->fontSize = 18;  
            $Verify->length   = 4;  
            $Verify->useNoise = false;  
            $Verify->codeSet = '0123456789';  
            $Verify->imageW = 200;  
            $Verify->imageH = 30;  
            $Verify->expire = 600;  
            $Verify->entry();            
    }   
    public function check_verify($code){
    	$verify = new \Think\Verify();
        return $verify->check($code);
      
    } 
}
