var HoverAll=function(){
var Hover=function(){
 $(".notice").hover(function(){		 
	 $(".label-tip").css("margin","-117px auto");
	 $(".label-tip").css("border-bottom-color","rgb(0,52,105)");
	 $(".notice-label").css({background: "#003469",color: "white",padding:"28px"});
	 $(".notice").css("border-color","#003469");
	 $(".notice-bottom").css({visibility:"visible",transform:"scale(1)"});
 },function(){
	 $(".label-tip").css("margin","-86px auto");
	 $(".label-tip").css("border-bottom-color","#fff");
	 $(".notice-label").css({background: "white",color: "#003649",padding:"13px"});
	 $(".notice").css("border-color","white"); 
	 $(".notice-bottom").css({transform:"scale(0)"});
 });
}
return {
	init:function(){
		Hover();
	}
}
}();