<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>Hello World</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
<meta name="author" content="JackZong"/>
<link href="/Blog2.0/Public/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="/Blog2.0/Public/assets/global/css/me.css" rel="stylesheet" type="text/css"/>
<link rel="shortcut icon" href="/Blog2.0/Public/assets/global/img/favicon.ico"/>
</head>
<body>
<!-- BEGIN PAGE-HEADER -->
<section class="page-header">
	<nav class="navbar navbar-default">
	  <div class="container">
	   <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	    	<!--屏幕分辨率变小后显示菜单按钮-->
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <!--结束屏幕分辨率变小后显示菜单按钮-->
	      <!-- <div class="navbar-brand"></div> --><!-- 头部动画暂不显示 -->
	    </div>
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li><a href="<?php echo U('Index/index');?>">首页 <span class="sr-only">(current)</span></a></li>
	      		<?php if(is_array($navs)): $i = 0; $__LIST__ = $navs;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if(empty($vo['children'])): ?><li><a href="<?php echo U('Article/category',array('id'=>$vo['id']));?>"><?php echo ($vo['name']); ?></a></li>
	      			<?php else: ?>
	      				 <li class="dropdown">
				          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
				          		<?php echo ($vo['name']); ?><span class="caret"></span></a>
				          <ul class="dropdown-menu" role="menu">
				          	<?php if(is_array($vo['children'])): $i = 0; $__LIST__ = $vo['children'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ch): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('Article/category',array('id'=>$ch['id']));?>"><?php echo ($ch['name']); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
				          </ul>
				        </li><?php endif; endforeach; endif; else: echo "" ;endif; ?>      
	      </ul>
	      <form class="navbar-form navbar-right" role="search" action="<?php echo U('Index/query');?>" method="post">
	        <div class="form-group">
	          <input type="text" class="form-control" name="search" placeholder="Search" style="border:hidden;border-radius: 50px;">
	        </div>
	   <!--      <button type="submit" class="btn btn-default">Submit</button> -->
	      </form>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav> 
	
	<div class="banner">
		<!-- <div class="container">
			<h5 class="sub-title">真正的安全感，来自你对自己的信心，是你每个阶段性目标的实现，<br>
			而真正的归属感，在于你的内心深处，对自己命运的把控，<br>
			因为你最大的对手永远都是自己。</h5>
			<img class="avatar-img img-circle" src="/Blog2.0/Public/assets/global/img/avatar.jpg">
		</div> -->
	</div>
</section>
<!-- END PAGE-HEADER -->
<!-- BEGIN PAGE-BODY -->
<section class="page-body">
	<div class="container">
		<div class="row">
			<div class="col-md-9">
				
	<ol class="breadcrumb">
	  <li>首页</li>
	 <?php if(empty($article_detail)): else: ?>
	  <li><a href="#"><?php echo ($article_detail['current']['c_name']); ?></a></li><?php endif; ?>
	 <?php if(empty($article_detail)): ?><li><a href="#">暂无文章</a></li>
	  <?php else: ?>
	<?php echo ($article_detail['current']['category_name']); ?>
	<li><?php echo ($article_detail['current']['title']); ?></li><?php endif; ?>
	</ol>
	<div class="body-left" style="background-color: white;height:800px;">
	<div class="article-detail">
		<div class="title text-center"><?php echo ($article_detail['current']['title']); ?></div>
		<div class="sub-title">
			<div class="row">
				<div class="col-md-3 col-md-offset-1"><i class="glyphicon glyphicon-time"></i><?php echo (date('Y-m-d',$article_detail['current'][create_time])); ?></div>
				<div class="col-md-3"><i class="glyphicon glyphicon-user"></i>Jack Zong</div>
				<div class="col-md-2"><i class="glyphicon glyphicon-eye-open"></i><?php echo ($article_detail['current']['hits']); ?></div>
			</div>
		</div>
		<div class="content">
			<p><?php echo ($article_detail['current']['content']); ?></p>
		</div>
		<div class="key-word "><i class="glyphicon glyphicon-tag"></i> 标签：<?php echo ($article_detail['current']['tags']); ?></div>
	</div>
  <hr>
	<div class="page">
		<span>上一篇：</span><a href="<?php echo U('Article/detail',array('id'=>$article_detail['last']['id']));?>" title="<?php echo ($article_detail['last']['title']); ?>"><?php echo ($article_detail['last']['title']); ?></a><br />
		<hr>
		<span>下一篇：</span><a href="<?php echo U('Article/detail',array('id'=>$article_detail['next']['id']));?>" title="<?php echo ($article_detail['next']['title']); ?>"><?php echo ($article_detail['next']['title']); ?></a>
	</div>
	<!--打分版，用户可以对当前新闻、游戏或者应用等进行1-5级的评分-->
	
<div id="SOHUCS"></div>
<script charset="utf-8" type="text/javascript" src="http://changyan.sohu.com/upload/changyan.js" ></script>
<script type="text/javascript">
    window._config = { showScore: true };
    window.changyan.api.config({
        appid: 'cys1QrtUi',
        conf: 'prod_34efe697e3b67b4cd93db03e269eb80f'
    });
</script> 

	</div>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br>

			</div>
			
			<div class="col-md-3">		
		<div class="panel panel-success">
      	   <div class="headline">最新文章</div>
	       <div class="article-3dspace">
	         <div class="article-group">
               <?php if(is_array($lastedCategory)): $i = 0; $__LIST__ = $lastedCategory;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$l): $mod = ($i % 2 );++$i;?><div class="article-new" id="article1">
                 <div class="article-img" >
                 <img src="/Blog2.0/Public/assets/global/<?php echo ($l['img_file']); ?>" width="100%" height="80px" onerror="this.src='./Public/assets/global/img/error.png'">
                 </div>      
               <a href="<?php echo U('Article/detail',array('id'=>$l['id']));?>">   <div class="article-text">
                <p>  <?php echo ($l['title']); ?> </p>                
                  </div>  </a>
                </div><?php endforeach; endif; else: echo "" ;endif; ?>
              </div>
           	 </div>
            </div>
 

			     
			    
		<!-- 		<div class="panel panel-success">
			      	<div class="headline">近期文章</div>
			      <div class="panel-body">
					<div id="youkuplayer" style="width:480px;height:400px"></div>
					 	 <script type="text/javascript" src="http://player.youku.com/jsapi">
							player = new YKU.Player('youkuplayer',{
							styleid: '9',
							client_id: 'YOUR YOUKUOPENAPI CLIENT_ID',
							vid: 'XMTI4OTc5MjI2OA',
							autoplay: true,
							show_related: true
							});
					  	</script>
			      </div>
			    </div>
 -->
					<div class="headline">
				     <h3>
				     	<span class="section-head-label"></span>
						访客记录
				    </h3>
					</div>

				<ul class="list-group">
				  <li class="list-group-item">
				    <span class="badge">14</span>
				   	 访客人数
				  </li>
				</ul>

			</div>
			
		</div>
	</div>
</section>
<!-- END PAGE-BODY -->
<!-- BEGIN PAGE-FOOTER -->
<div class="jiandao"></div>
<section class="page-footer">
<div class="container">
	<div class="row">

		<div class="col-md-4">
		<div class="about-wrapper">
			<h4 class="foot-item-head">文章归档</h4>
			<ul>
			<?php if(is_array($month)): $i = 0; $__LIST__ = $month;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$m): $mod = ($i % 2 );++$i;?><li><a class="ln-about" href="<?php echo U('Index/month',array('month'=>$m));?>">2015年<?php echo ($m); ?>月</a></li><?php endforeach; endif; else: echo "" ;endif; ?>
			</ul>
		</div>
	</div>
	<div class="col-md-4">
		<h4 class="foot-item-head">友情链接</h4>
		<?php if(is_array($friendLink)): $i = 0; $__LIST__ = $friendLink;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$f): $mod = ($i % 2 );++$i;?><a href="<?php echo ($f['url']); ?>"><div><?php echo ($f['name']); ?></div></a><?php endforeach; endif; else: echo "" ;endif; ?>
	</div>
	<div class="col-md-4">
			<h4 class="foot-item-head">关注作者</h4>
		<a target="_blank" href="http://sighttp.qq.com/authd?IDKEY=336567eb346023870e32c21c531a5e99b5b4687bfee0ebec"><img border="0" src="http://3gimg.qq.com/qq_product_operations/im/2015/logo_w.png" alt="点击这里给我发消息" title="点击这里给我发消息"></a>
		</div>
	</div>

</div>
</div>
	</div>
</div>

</section>
<!-- END PAGE-FOOTER -->
<!-- BEGIN JAVASCRIPTS -->
<!-- BEGIN CORE PLUGINS -->
<script src="/Blog2.0/Public/assets/plugins/jquery/jquery-2.1.3.min.js" type="text/javascript"></script>
<script src="/Blog2.0/Public/assets/plugins/bootstrap/js/bootstrap.js" type="text/javascript"></script>

<!-- END CORE PLUGINS -->
<!-- BEGIN CORE SCRIPTS -->
<script src="/Blog2.0/Public/assets/global/js/me.js" type="text/javascript"></script> 
<!-- END CORE SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<!-- END PAGE LEVEL SCRIPTS -->
<!-- END JAVASCRIPTS -->

 <script type="text/javascript">
$(document).ready(function() {
	$("li").click(function(){
	
		$(this).addClass("active");
	
		
	});
	
});
$(document).ready(function(){
	$('.jiandao').on('click',function(){
		

	})
	
	
})
</script> 

</body>
<!-- END BODY -->
</html>