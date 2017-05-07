<?php
namespace Admin\Controller;
use Think\Controller;
use Admin\Model\ArticleDetailModel;
use Admin\Model\ArticleCategoryModel;
use Think\Model;
class AdminArticleController extends BaseController {
	
	protected $modelAD;
	
	public function _initialize(){
		
		parent::_initialize();
			
			
		
	}
    public function articleAll(){
    	$this->modelAD=new ArticleDetailModel();
    	$ArticleAll=$this->modelAD->getDetail();
    	$allCount=$this->modelAD->getAllCount();
    	$page=$this->modelAD->articlePage($allCount); 	
    	$this->assign('page',$page)->assign('ArticleAll',$ArticleAll);
    	$this->display();
    }
    
    public function del(){
    	$article_id=I('id');  	
    	$result=D('ArticleDetail')->ArticleDel($article_id); 	
    	if($result) $this->success('成功');	
    	else $this->error('失败');
    	
    }
	
    public function articleAdd(){
    	$nav=D('ArticleCategory')->nav();
    	//dump($nav);
    	$this->assign('nav',$nav);
  
    	$this->display();
    }
    public function articleAd(){
    	$result=D('ArticleDetail')->artcAdd();
    	if($result){
    		$this->success('新增成功！',U('AdminArticle/articleAll'));
    	}else{
    		$this->error('新增失败！');
    	}
    }
    
    
    public function getFriendsLink(){
    	$dAd=D('ArticleDetail');
    	$fl=$dAd->getFl();
    	//dump($fl);
    	$this->assign('friendlink',$fl);
    	$this->display('friendsLink','utf-8'); 	
    }
    public function addFriendLink(){
    	$date['name']=$_POST['linkname'];
    	$date['url']=$_POST['linkurl'];
    	$addfl=M('friend_link')->add($date);
    	$addfl?$this->success("增加成功"):$this->error("新增失败");
    }
    public function delFriendLink(){
    	$flId=I('id');
    	//dump($flId);
    	$mFl=M('friend_link');
    	$where['id']=$flId;
    	$data = array('status'=>'10');
    	$delfl=$mFl->where($where)->data($data)->save();	
    	$delfl?$this->success('删除成功'):$this->error("删除失败");
    }
    public function sortAll(){
       $dHac=D('Home/ArticleCategory');
       $data=1;
       $sortAll=$dHac->nav($data);
      // dump($sortAll);
       $this->assign('sortAll',$sortAll);
       $this->display();
    
    }
    public function articleEdit(){
    	$article_id=I('article_id');   
    	$this->modelAD=new ArticleDetailModel();
    	$article=$this->modelAD->articleEdit($article_id);
    	$this->assign('editText',$article); 
    	$this->display();
    	
    }
    public function articleUpdate(){	
    /* 	$article_id=I('article_id');
    	dump($article_id); */
    	$data=array();
    	$data['content']=$_POST['content'];
    	$data['update_time']=$_POST['update_time'];
    	$data['title']=$_POST['title'];
    	$data['id']=$_POST['id'];
    	$this->modelAD=new ArticleDetailModel();
    	$article=$this->modelAD->articleUpdate($data);	   	 
    	 if($article)
    	 $this->success('编辑成功','',1);
    	 else
    	 $this->error('操作失败(可能原因：您未做任何更改)','',2); 
  
    	
    }
    public function categorydel(){
    	$category_id=I('category_id');
        $dAD=D('ArticleDetail');
        $del=$dAD->del($category_id);
        ($del=="1")?$this->success('删除成功'):$this->error('删除失败');
    }
    public function addCategory1(){
    	$data['name']=$_POST['oneName'];
        $dAd=D('ArticleDetail');
        $addName=$dAd->addCategory1($data);
        $addName?$this->success('新增失败'):$this->error('新增成功');
    }
    public function addCategory2(){
    	$data['name']=$_POST['twoName'];
    	$a=$date['pid']=$_POST['category_id'];
    	//dump($a);
    	$dAd=D('ArticleDetail');
    	$addName=$dAd->addCategory2($data);
    	$addName?$this->success('新增成功'):$this->error('新增失败');
    }
    public function editFl(){
    	$show = array('index_show'=>I('index_show'));
    	$data['id'] = I('id');
    	$result = M('friend_link')->where($data)->setField($show);
    	$result?$this->success('修改成功'):$this->error('操作失败');
    	
        
    }
    public function editCategory(){
    	$where=array('id'=>I('id'));
    	$data['index_show']=I('index_show');
    	$b=M('article_category')->where($where)->setField($data);
    	$b?$this->success('设置成功'):$this->error();
      		
    }
 
    
    
    
}