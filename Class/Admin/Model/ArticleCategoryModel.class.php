<?php
namespace Admin\Model;
use Think\Model;
class ArticleCategoryModel extends Model {
  
	public function nav(){
		$navs = $this->where(
				array('status'=>array('eq',1),			
				))
				->field('pid,id,name')
				->select();
		$arr = array();
		foreach($navs as $v){
			if(!$v['pid']){//为了取父亲
				$children = array();//为了取儿子
				foreach($navs as $n){
					if($v['id']==$n['pid']){
						$children[] = $n;
					}
				}
				//dump($children);
				$v['children'] = $children;
				$arr[] = $v;//组装
			}
		}		
		//dump($arr);
		return $arr;
	}
}