<?php
namespace Admin\Model;
use Think\Model;
class ArticleDetailModel extends Model {
	
	public function getDetail($category_id){
		$article=$this
		->alias('ad') 
		->join('blog_article_category AS ac ON ad.category_id = ac.id')
		->field('ad.id,ad.title,ad.content,ad.hits,ad.img_file,ad.tags,ad.create_time,ad.update_time,ac.name AS category_name') 
		->where(array('ad.status'=>array('eq',1),'ad.category_id'=>$category_id ? $category_id : array('gt',0)))
		->order('update_time desc')
		->page($_GET['p'],C('ADMIN_ARTICLE_NUM'))
		->select();
		//dump($article);
		return $article;
		
	}
	
	public function ArticleDel($id){
		 return $this->where(array('id'=>$id,'status'=>1))->setField('status',10);
	}
	
	public function getAllCount(){
		return $this->where(array(
				'status'=>array('eq',1)
		))->count();
	}
	
	public function articlePage($count){
	
		$Page  = new \Think\Page($count,C('ADMIN_ARTICLE_NUM'));
		//dump($Page);
	
		$Page->setConfig('theme','%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END% %HEADER% ');
		$Page->setConfig('prev', '上一页');
		$Page->setConfig('next', '下一页');
		$show       = $Page->show();// 分页显示输出
	
		//dump($show);
		return $show;
	}
	
	public function artcAdd(){
		/* $upload = new \Think\Upload();// 实例化上传类    
		$upload->maxSize   =     3145728 ;// 设置附件上传大小    
		$upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型    
		$upload->savePath  =      './Public/Uploads/'; // 设置附件上传目录    // 上传文件     
		$info   =   $upload->upload();    if(!$info) {// 上传错误提示错误信息        
			$this->error($upload->getError());    }else{// 上传成功       
				$this->success('上传成功！');    }
		$data=$this->create(); */
		$data['user_id']=session('user_id');
		$data['create_time']=time();
		$data['update_time']=strtotime($data['update_time']);
		$data['status']=1;
		$result=$this->field('title,category_id,user_id,content,tags,create_time,update_time,status,img_file')->data($data)->add();
		return $result;
	}
	public function articleEdit($article_id){
		
		return $article=$this->where(array('id'=>$article_id))->field('content,create_time,title,id')->find();
		
		
	}
	public function articleUpdate($data){
	 return  $article=$this->save($data);	  	
	
	}
	public function del($categoryId){
		$mCA=M('article_category');
		$data['status']=10;
		$data['id']=$categoryId;
		return $del=$mCA->save($data);		
	}
	public function addCategory1($data) {
		$mCA=M('article_category');
		return $mCA->add($data);
	}
	public function addCategory2($data) {
		$mCA=M('article_category');
		return $mCA->data($data)->add();
	}
	public function getFl($data) {
		$mCA=M('friend_link');
		$fl=$mCA->where(array('status'=>array('eq',1)))->select();
		//dump($fl);
		return $fl;
	}

}
















//public function getParentTitle($category_id){
	// 		$mAc=M('article_category');
	// 		$pid=$mAc->where(array('id'=>$category_id,'status'=>array('eq',1)))->getField('pid');

	// 		$oneName=$mAc->where(array('id'=>$pid,'status'=>array('eq',1)))->getField('name');

	// 		return $oneName;
	// 	}

	// 	public function getCount($category_id){

	// 		return $this->where(array('status'=>array('eq',1),'category_id'=>$category_id ? $category_id : array('gt',0)))->count();  //返回符合条件的记录总数

	// 	}

	// 	//分页不多讲，，就是这样写的，调用框架的
	// 	public function articlePage($count){

	// 		$Page       = new \Think\Page($count,C('INDEX_ARTICLE_NUM'));// 实例化分页类 传入总记录数和每页显示的记录数
	// 		//dump($Page);

	// 		$Page->setConfig('theme','%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END% %HEADER% ');
	// 		$Page->setConfig('prev', '上一页');
	// 		$Page->setConfig('next', '下一页');
	// 		$show       = $Page->show();// 分页显示输出

	// 		//dump($show);
	// 		return $show;

	// 	}