/**
 * 主页文章显示
 */
var Article=function(){
	
	var articleAll = function(){
		//未来元素的监听
		$(".article-page").on("click",'a',function(e){
				e.preventDefault();
				var str = $(this).text() || '';
				var pp = '';
				
				if(str === '下一页'){
					pp = $('.current').next().html() || '';
				}else if(str === '上一页'){
					pp = $('.current').prev().html() || '';
				}else{
					pp = str;
				}
				
				$.post(APP+'?m=Home&c=Index&a=ajaxGetArticle&p='+pp,{p:pp},function(data){  //在frameset中加入项目名到window对象中，window可省略
				//	console.log(data);	
				//文章模板 用{:XXX}占位  后面统一替换
					var article=""
				+	"<article>"
				+	"<div class='title'>{:title}</div>"
				+	'<div class="row abstract">'
				+		'<div class="col-md-3"><img class="img-thumbnail" src="Public/assets/global/{:img_file}"></div>'
				+		'<div class="col-md-9">'
				+			'<div class="content">'
				+				'<p>{:content}</p>'
				+			'</div>'
				+			'<a href="detail.html" class="btn btn-success btn-sm pull-right">阅读全文>></a>'
				+		'</div>'
				+	'</div>'
				+	'<div class="row sub-title">'
				+		'<div class="col-md-3"><i class="glyphicon glyphicon-time"></i>{:update_time}</div>'
				+		'<div class="col-md-2"><i class="glyphicon glyphicon-folder-open"></i>&nbsp;&nbsp;{:category_name}</div>'
				+		'<div class="col-md-2"><i class="glyphicon glyphicon-eye-open"></i>&nbsp;&nbsp;{:hits}</div>'
				+	'</div>'
				+	'</article>';
	
				var html="";
				//遍历data 相当于foreach
				$.each(data.detail,function(k,v){
					html+=article.replace(/\{:(\w+)}/g,function(k1,v1){
						if(v1 === 'content'){
							return v[v1].substr(1,150)+"..." || '';
						}
						return v[v1] || '';
					});
				});
				
				//滚动条事件
				$('body	,html').animate({
					scrollTop : 0
				}, 1000);
				
				$(".article-page").html(data.page);
				$(".article-list").html(html);
			});
		});
	};

	return {
		// 页面初始化
		init:function(){
			articleAll();
		}
	}
}();