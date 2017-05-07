<?php
namespace Home\Model;
use Think\Model;
class ArticleCategoryModel extends Model {
	public function nav($data){
		//dump($data);
		($data==1)?$navs = $this->where(
				array('status'=>array('eq',1)						
				))
				->field('pid,id,name,index_show')
				->select():$navs = $this->where(
				array('status'=>array('eq',1),'index_show'=>array('eq',1)							
				))
				->field('pid,id,name,index_show')
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
	public function month() {
		$timeAll=M('article_detail')->field('create_time')->select();
		$arr=array();
		foreach ($timeAll as $t ){
			$month=date('m',$t['create_time']);
			switch ($month){
				case 01:
					$arr['Jan']=$month;
					break;
				case 02:
					$arr['Feb']=$month;
					break;
				case 03:
					$arr['Mar']=$month;
					break;
	
				case 04:
					$arr['Apr']=$month;
					break;
				case 05:
					$arr['May']=$month;
					break;
				case 06:
					$arr['Jun']=$month;
					break;
	
				case 07:
					$arr['Jul']=$month;
					break;
				case 08:
					$arr['Agu']=$month;
					break;
				case 09:
					$arr['Sep']=$month;
					break;
					 
				case 10:
					$arr['Oct']=$month;
					break;
				case 11:
					$arr['Nov']=$month;
					break;
				case 12:
					$arr['Dec']=$month;
					break;
			}
	
		}
		$month=array();
		return $month[]=$arr;
	
	
	
	}
}