<?php
namespace Admin\Controller;
use Think\Controller;
class BaseController extends Controller{

	public function _initialize(){
		
	  $this->assign('nav',D('Home/ArticleCategory')->nav());
	  
	}
}
	
