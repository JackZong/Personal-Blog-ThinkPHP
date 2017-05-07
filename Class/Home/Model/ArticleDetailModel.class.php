<?php
namespace Home\Model;
use Think\Model;
class ArticleDetailModel extends Model {
	
	public function getDetail($category_id){
		$article=$this
		->alias('ad')
		->join('blog_article_category AS ac ON ad.category_id = ac.id') 
		->field('ad.id,ad.title,ad.content,ad.hits,ad.img_file,ad.tags,ad.create_time,ad.update_time,ac.name AS category_name,ac.id AS cid') 
		->where(array('ad.status'=>array('eq',1),'ad.category_id'=>$category_id ? $category_id : array('gt',0)))  
		->order('hits desc')
	    ->page($_GET['p'],C('INDEX_ARTICLE_NUM'))
		->select();
		foreach($article as $k=>$v){
			$hour[]=$article[$k]['create_time'];
		  /* 	$article[$k]['content'] = substr($v['content'],0,40).'...'; */
			$article[$k]['create_time'] = date('m',$v['create_time']);  
			$article[$k]['update_time'] = date('Y-m-d',$v['update_time']);		
		}
	   $h1=$this->getHour($hour);   
	   foreach($article as $k=>$v){
            foreach ($h1 as $val){
	     	$article[$k]['hour'] =$val;  
            }
	   }
	  // dump($article);		
		return $article;		
	}
	public function getHour($hour){
		 foreach ($hour as $value){
		    $hour=$value;
		    $h=$this->tmspan($hour);
		    $arr[]=$h;
		 }	 
		return $arr;
	}	
	public function tmspan($timestamp,$current_time=0){
		//dump($timestamp);
		if(!$current_time) $current_time=time();
		$span=$current_time-$timestamp;
	 //  dump($span);
		if($span<60){
			return "刚刚";
		}else if($span<3600){
			return intval($span/60)."分钟前";
		}else if($span<24*3600){
			return intval($span/3600)."小时前";
		}else if($span<(7*24*3600)){
			return intval($span/(24*3600))."天前";
		}else{
			return date('Y-m-d',$timestamp);
		}
	}
	
	public function getParentTitle($category_id){
		$mAc=M('article_category');
		$pid=$mAc->where(array('id'=>$category_id,'status'=>array('eq',1)))->getField('pid');
		$oneName=$mAc->where(array('id'=>$pid,'status'=>array('eq',1)))->getField('name');
		return $oneName;
	}
	
	public function getCount($category_id){	
		return $this->where(array('status'=>array('eq',1),'category_id'=>$category_id ? $category_id : array('gt',0)))->count(); 
	
	}
	

	public function articlePage($count){	
		$Page =new\Think\Page($count,C('INDEX_ARTICLE_NUM'));
		$Page->setConfig('theme','%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END% %HEADER% ');
		$Page->setConfig('prev', '上一页');
		$Page->setConfig('next', '下一页');
		$show= $Page->show();
		//dump($show);
		return $show;
		
	}
	   public function Detail($article_id){
    	$count=$this->where(array('id'=>array('lt',$article_id)))->order('id asc')->count();
    //	dump($count);
    	//echo $count;
    	$record=$this->alias('d')
    	->order('id asc')
    	->join('blog_article_category AS c ON d.category_id=c.id')
    	->field('d.id,d.title,d.content,d.hits,d.img_file,d.tags,d.create_time,d.update_time,c.pid as c_pid,c.name as category_name')
    	->limit($count?$count-1:$count,$count?3:4)
    	->select();  	
    	//dump($record);
    	$categoryPname=M('article_category')
    	->order('id asc')
    	->where(array('status'=>array('eq',1)))
    	->getField('id,name');

    	//dump($categoryPname);
    	
    	foreach ($record as $k=>$v){
    		if($v['c_pid']!=0){
    			$pid=$v['c_pid'];
    			$record[$k]['c_name']=$categoryPname[$pid];
    		}
    	}
    
    	$list=array('last'=>$record[0],'current'=>$record[1],'next'=>$record[2]);
    	if ($count==0){
    		$list['last']=NULL;
    		$list['current']=$record[0];
    		$list['next']=$record[1];
    	}
    	dump($list);
    	return $list;
    }
    //最新文章开始
    public function lastedCategory(){
    	$lcategory = $this->alias('ad')
    	->join('blog_article_category AS ac ON ad.category_id = ac.id')
    	->where(array("ad.status"=>array("eq",1)))
    	->field('ad.create_time,ad.title,ad.img_file,ad.id')
    	->order('create_time desc')
    	->limit(C('LASTED_CATEGORYTITLE_NUM'))
    	->select();
    	//dump($lcategory);
    	return $lcategory;
    
    }
    //最新文章结束

}