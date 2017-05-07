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
		  <a href="<?php echo U('AdminArticle/articleAll');?>" class="list-group-item">
		    文章管理<i class="glyphicon glyphicon-chevron-right pull-right"></i>
		  </a>
		  <a href="<?php echo U('AdminArticle/articleAdd');?>" class="list-group-item active">文章发布<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
		  <a href="<?php echo U('Admin/AdminArticle/getFriendsLink');?>" class="list-group-item">友情链接<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
		  <a href="<?php echo U('Admin/AdminArticle/sortAll');?>" class="list-group-item">分类管理<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
	</div>

			</div>
			<div class="col-md-9">
		     	
    <link rel="stylesheet" type="text/css" href="./Public/assets/plugins/simditor/styles/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="./Public/assets/plugins/simditor/styles/simditor.css" />
    <script type="text/javascript" src="./Public/assets/plugins/simditor/scripts/js/jquery.min.js"></script>
    <script type="text/javascript" src="./Public/assets/plugins/simditor/scripts/js/module.js"></script>
    <script type="text/javascript" src="./Public/assets/plugins/simditor/scripts/js/uploader.js"></script>
    <script type="text/javascript" src="./Public/assets/plugins/simditor/scripts/js/simditor.js"></script>
				<ol class="breadcrumb">
				  <li>后台管理</li>
				  <li class="active">文章发布</li>
				</ol>
				<form class="form-horizontal" enctype="multipart/form-data" method="post" action="<?php echo U('AdminArticle/articleAd');?>">
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">文章分类</label>
				    <div class="col-sm-10">
				      <select class="form-control" name="category_id">
				      	<?php if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><option value="<?php echo ($v['id']); ?>"><?php echo ($v['name']); ?></option>
				      		<?php if(!empty($v['children'])): if(is_array($v['children'])): $i = 0; $__LIST__ = $v['children'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v1): $mod = ($i % 2 );++$i;?><option value="<?php echo ($v1['id']); ?>">&nbsp;&nbsp;>><?php echo ($v1['name']); ?></option><?php endforeach; endif; else: echo "" ;endif; endif; endforeach; endif; else: echo "" ;endif; ?>
				      </select>
				    </div>
				  </div>
				 <!--  <div class="form-group">
				    <label for="publish-time" class="col-sm-2 control-label">更新时间</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="publish-time" name="update_time">
				    </div>
				  </div> -->
				  <div class="form-group">
				    <label for="article-title" class="col-sm-2 control-label">文章标题</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="article-title" name="title">
				    </div>
				  </div>
				  <div class="form-group">
					  <label class="col-sm-2 control-label">文章正文</label>
					  <div class="col-sm-10">
					    <textarea id="editor" placeholder="这里输入内容" name="content"></textarea>
					    </div>
				  </div>
				  <div class="form-group">
				    <label for="keywords" class="col-sm-2 control-label">文章配图</label>
				    <div class="col-sm-10">
				      <input type="file" name="img_file">
				  </div>
				  </div>
				  <div class="form-group">
				    <label for="keywords" class="col-sm-2 control-label">关键词</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="keywords" name="tags">
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">				    
				      <button type="submit" class="btn btn-success  btn-default">提交</button>
				    </div>
				  </div>
				</form>
				  
  <script type="text/javascript">
    var editor = new Simditor({
      textarea: $('#editor')
    });
  </script>

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