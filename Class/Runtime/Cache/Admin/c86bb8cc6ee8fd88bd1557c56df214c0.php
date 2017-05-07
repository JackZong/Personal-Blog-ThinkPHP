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
		  <a href="<?php echo U('AdminArticle/articleAll');?>" class="list-group-item ">
		    文章管理<i class="glyphicon glyphicon-chevron-right pull-right"></i>
		  </a>
		  <a href="<?php echo U('AdminArticle/articleAdd');?>" class="list-group-item">文章发布<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
		  <a href="<?php echo U('Admin/AdminArticle/getFriendsLink');?>" class="list-group-item">友情链接<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
		  <a href="<?php echo U('Admin/AdminArticle/sortAll');?>" class="list-group-item active">分类管理<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
	</div>

			</div>
			<div class="col-md-9">
		     			
				<ol class="breadcrumb">
				  <li>后台管理</li>
				  <li class="active">分类管理</li>
				</ol>
				<div class="row">
					<div class="col-md-3">分类名称</div>
                    <div class="col-md-3">导航级数</div>
					<div class="col-md-2">导航显示</div>
					
					<div class="col-md-2">操作</div>
				</div>
				<hr>
                  	  <div class="list-group">
            	<?php if(is_array($sortAll)): $i = 0; $__LIST__ = $sortAll;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$s): $mod = ($i % 2 );++$i;?><span class="list-group-item" style="border-radius:0;background: #EEEEEE">	
	    	<div class="row">
	     	<div class="col-md-3">
   <?php echo ($s['name']); ?></div>	
    	<div class="col-md-3">一</div>
						<div class="col-md-2">
						<?php if($s['index_show'] == 0): ?><i class="glyphicon glyphicon-remove"></i>
						 <?php else: ?>
						 <i class="glyphicon glyphicon-ok">		
						 </i><?php endif; ?>
</div>
				
						<div class="col-md-2">
						<?php if($s['index_show'] == 0): ?><a href="<?php echo U('AdminArticle/editCategory',array('id'=>$s['id'],'index_show'=>1));?>">开启 </a>|
						<?php else: ?>
						<a href="<?php echo U('AdminArticle/editCategory',array('id'=>$s['id'],'index_show'=>0));?>">禁用 </a>|<?php endif; ?>
						<a href="<?php echo U('AdminArticle/categorydel',array('category_id'=>$s['id']));?>">删除</a> </div>
    </div>  </span>
    <?php if(empty($s['children'])): else: ?>
				<?php if(is_array($s['children'])): $i = 0; $__LIST__ = $s['children'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$c): $mod = ($i % 2 );++$i;?><span class="list-group-item" style="border-radius:0;">	
	    	<div class="row">
	     	<div class="col-md-3">
  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><?php echo ($c['name']); ?></div>	
    	<div class="col-md-3">二</div>
						<div class="col-md-2"> <i class="glyphicon glyphicon-ok"></i>
</div>
					
						<div class="col-md-2"> 
						
								<?php if($s['index_show'] == 0): ?><a href="<?php echo U('AdminArticle/editCategory',array('id'=>$c['id'],'index_show'=>1));?>">开启 </a>|
						<?php else: ?>
						<a href="<?php echo U('AdminArticle/editCategory',array('id'=>$c['id'],'index_show'=>0));?>">禁用 </a>|<?php endif; ?>
					
						<a href="<?php echo U('AdminArticle/categorydel',array('category_id'=>$c['id']));?>">删除</a> </div>
    </div>  </span><?php endforeach; endif; else: echo "" ;endif; endif; endforeach; endif; else: echo "" ;endif; ?>
				 </div>
				 
				 				<form class="form-inline" action="<?php echo U('AdminArticle/addCategory1');?>" method="post">
				  <div class="form-group">
				    <label for="exampleInputName2">一级分类</label>
				    <input type="text" class="form-control" id="exampleInputName2" name="oneName">
				  </div>
				    <button class="btn btn-success">添加一级分类</button>
				  </form>
				 <br><br><br>
				 <form class="form-inline" action="<?php echo U('AdminArticle/addCategory2');?>" method="post">
				  <div class="form-group">
				    <label for="exampleInputEmail2">二级分类</label>
				   <select class="form-control" name="category_id">
				      	<?php if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><option value="<?php echo ($v['id']); ?>"><?php echo ($v['name']); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
				      	
				      </select>
				    <input type="text" class="form-control" id="exampleInputEmail2" name="twoName" placeholder="请先选择一个一级分类" required="required">
				  </div>
               <button class="btn btn-success">添加二级分类</button>
				</form>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
		
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