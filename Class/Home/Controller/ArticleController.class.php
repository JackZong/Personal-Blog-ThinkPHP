<?php
namespace Home\Controller;
use Think\Controller;
class ArticleController extends BaseController {
    public function category(){
    	$mAd=D('ArticleDetail');
    	$category_id=I('id');
    	$category_article=$mAd->getDetail($category_id);
    	$count=$mAd->getCount($category_id);
    	//dump($count);
		$page=$mAd->articlePage($count);
		//dump($category_article);
		$oneName=$mAd->getParentTitle($category_id);
		$this->assign('oneName',$oneName)->assign('page',$page)->assign('category_article',$category_article);
        $this->assign('empty','<span class="empty" style="font-size: 1.5em; width:50%; height="50%;">暂时没有数据<img src="./Public/assets/global/img/14.gif" style="width:50px;height:50px;"></span>');
		$this->display();    
    }  
    public function detail(){
        $id=I('id');
        $dAd=D('ArticleDetail');
        $detail=$dAd->Detail($id);
      //  dump($detail);
        $this->assign('article_detail',$detail);
    	$this->display();
    }

    
}
