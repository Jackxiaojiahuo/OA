$(function(){
		$("[indent]").click(
			function(){
				var psid=$(this).attr("sid");
				if($(this).nextAll("[psid^="+psid+"]").get(0).style.display=="none"){
					$(this).find("img").eq(0).attr("src","css/minus.gif");
					$(this).nextAll("[psid^="+psid+"]").show();	
				}else{
					$(this).find("img").eq(0).attr("src","css/plus.gif");
					yc(this,psid);
				}
			}
		);
		function yc(obj,psid){
			$(obj).nextAll("[psid^="+psid+"]").each(function(){
				$(this).hide();
				$(this).find("a>img").eq(0).attr("src","css/plus.gif");
				psid=$(this).attr("sid");
				yc(this,psid);
			});
		}
	});