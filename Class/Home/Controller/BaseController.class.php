<?php
namespace Home\Controller;
use Think\Controller;
class BaseController extends CommonController {
	public function _initialize(){
	//	dump(D('ArticleCategory')->nav());
		$this->assign('navs',D('ArticleCategory')->nav())
		->assign('month',D('ArticleCategory')->month())
		->assign('lastedCategory',D('ArticleDetail')->lastedCategory())
		->assign('friendLink',M('friend_link')->where('status=1 AND index_show=1')->select());
	}










}
