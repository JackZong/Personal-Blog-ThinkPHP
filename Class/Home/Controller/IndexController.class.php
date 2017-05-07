<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends BaseController {
	
    public function index(){  	
    	$mDetail = D('ArticleDetail'); 
    	$page = $mDetail->articlePage($mDetail->getCount());
    	$detail = $mDetail->getDetail(); 
        $this->display();  
    	$this->assign('detail',$detail); 
    	$this->assign('page',$page); 
     	/* $this->assign('Think.lang.lan_define',L('lan_define'));  */
    	header("Content-type:text/html;charset=utf-8");
    	
    }
    
//    public function ajaxGetArticle(){
//     	$p =$_POST['p'];
//      	$mDetail = D('ArticleDetail');  
//      	$page = $mDetail->articlePage($mDetail->getCount());
//      	$detail = $mDetail->getDetail(null,$p);
//     	$data = array();
//     	$data['detail'] = $detail;
//     	$data['page'] = $page;
//     	$this->ajaxReturn($data);
//     } 
    public function query(){
    	$data=I('search');	
    	$mAC=M('article_detail');
    	//$record=$mAC->getRecord($data);
    	$where['title'] = array('like','%'.$data.'%');
    	$where['content'] = array('like','%'.$data.'%');
    	$where['_logic'] ='or';
    	$map['_complex']=$where;
    	$query=M('article_detail')->where($where)->select();
    	$count=M('article_detail')->where($where)->count();
    	$this->assign('query',$query)->assign('count',$count)->assign('keyword',$data);
    	$this->display();
	
    }
    public function month(){
    	$month=I('month');
    	$timeAll=M('article_detail')->field('create_time,title,content,img_file,hits,category_id')->select();
    	//dump($timeAll);
        foreach ($timeAll as $key=>$value){      	
        	$mon=date('m',$value['create_time']);
        	$arr[]=$mon;
           for($i=0;$i<count($arr);$i++){
       	    $value['month']=$arr[$i];     
           }  
           $yuefen[]=$value;            
        }         
        $this->assign('yuefen',$yuefen)->assign('mon',$month); 	
    	$this->display();
    }
    public function friendLink(){
    	$this->assign('friendLink',M('friend_link')->where('status=1 AND index_show=1')->select());
    	
    	
    	
    }

}