<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>BLOG
</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
<meta name="author" content="Carmen"/>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="./Public/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="./Public/assets/global/css/me.css" rel="stylesheet" type="text/css"/>
<link rel="shortcut icon" href="./Public/assets/global/img/favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body>
<!-- BEGIN PAGE-HEADER -->
<section class="page-header">
	<nav class="navbar navbar-default">
	  <div class="container">
	   <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	    </div>	
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">    
	      <ul class="nav navbar-nav">      
	        <li><a href="<?php echo U('Home/Index/index');?>">首页 <span class="sr-only">(current)</span></a></li>	      
	      <?php if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$n): $mod = ($i % 2 );++$i; if(empty($n['children'])): ?><li><a href="<?php echo U('Home/Article/category',array('id'=>$n['id']));?>"><?php echo ($n['name']); ?> </a></li>    
	         <?php else: ?>  
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><?php echo ($n['name']); ?><span class="caret"></span></a>                
	          <ul class="dropdown-menu" role="menu">
	            <?php if(is_array($n['children'])): $i = 0; $__LIST__ = $n['children'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$c): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('Home/Article/category',array('id'=>$c['id']));?>"><?php echo ($c['name']); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
	          </ul>
	        </li><?php endif; endforeach; endif; else: echo "" ;endif; ?>     
	      </ul>
  <div class="auther" style="float: right; border: 1px solid grey;border-radius: 50px"><img src="./Public/assets/global/img/favicon.ico" widyh="50px" height="50px"></div>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav> 	
	<div class="banner">
		<div class="container">		
		</div>
	</div>
</section>
<!-- END PAGE-HEADER -->
<!-- BEGIN PAGE-BODY -->
<section class="page-body">
	<div class="container">
		<div class="row">
			<div class="col-md-3">
			
	<div class="list-group">
		  <a href="<?php echo U('AdminArticle/articleAll');?>" id="list1" class="list-group-item active">
		    文章管理<i class="glyphicon glyphicon-chevron-right pull-right"></i>
		  </a>
		  <a href="<?php echo U('AdminArticle/articleAdd');?>" class="list-group-item active">文章发布<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
		  <a href="<?php echo U('Admin/AdminArticle/getFriendsLink');?>" class="list-group-item">友情链接<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
		  <a href="<?php echo U('Admin/AdminArticle/sortAll');?>" class="list-group-item">分类管理<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
	</div>

			</div>
			<div class="col-md-9">
		     

	<ol class="breadcrumb">
				  <li>后台管理</li>
				  <li class="active">文章管理</li>
				    <li class="active">编辑</li>
				</ol>
<div class="container">
<div class="row">
<div class="col-md-12">
<!-- <form action="<?php echo U('AdminArticle/articleUpdate',array('article_id'=>$editText['id']));?>" method="post"> -->
	 <form action="<?php echo U('AdminArticle/articleUpdate');?>" method="post"> 
	<h4>文章内容</h4>
<textarea name="content" cols="100" rows="15"><?php echo ($editText['content']); ?></textarea>
<br>
<br>
<br>
<br>
<br>
标题<input type="text" name="title" value="<?php echo ($editText['title']); ?>">

发布时间<input type="text" name="update_time" value="<?php echo (date('Y-m-d',$editText['create_time'])); ?>">
<input type="submit" class="submit" value="提交">
<input type="radio" name="id" checked="checked" value="<?php echo ($editText['id']); ?>" style="display: none">


</form>
</div>

</div>
</div>

			</div>			
		</div>
	</div>
<div class="clearfix"></div>
</section>
<section class="page-footer">
	<div class="container">		
	</div>
</section>
<script src="./Public/assets/plugins/jquery/jquery-2.1.3.min.js" type="text/javascript"></script>
<script src="./Public/assets/plugins/bootstrap/js/bootstrap.js" type="text/javascript"></script>
<script src="./assets/global/js/me.js" type="text/javascript"></script>
</body>
<!-- END BODY -->
</html>