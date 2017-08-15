﻿	$(function(){
		$('#colloaContent').load('desktop.html');//加载桌面页面
		//左边菜单显示隐藏事件
		$('.indent0').click(function(){//循环给模块标题绑定点击事件
			var index=$(this).index()/2-1;//因为a和span同级,所以取总数一半减1
			/*第一个此样式的元素在同级元素中排第2,又因为此样式和后面子模块的span同级,此样式元素的总数为7,同级元素总数为16(不算注销),再减去桌面和驾驶模块剩(14),所以取本元素的下标(在本元素数组中)用本元素的在同级元素的下标/2-1
			*/
			//alert('this.index>>>'+$(this).index());//本元素的在同级元素的下标
			//alert('length>>'+$('.indent0').length);//此样式元素的总数
			//alert('index>>'+index);//本元素的下标(在本元素数组中)
			$('.indent0').each(function(i){//循环隐藏不是点击事件的模块
				if(i!=index){
					$('.indent0:eq('+i+')').next('span').find('[style]').hide();
					$('.indent0ex').next('span').find('[style]').hide();//将驾驶舱隐藏
				}
			});
			$(this).next('span').find('[style]').toggle();	//隐藏或展示其子模块
		});
		$('.indent0ex:first').click(function(){//桌面模块点击事件
			$('#colloaContent').load($(this).attr('url')+'.html');//加载index.html
			$('.indent0').next('span').find('[style]').hide();//其余模块所有子模块隐藏
			//添加高亮样式,将驾驶舱展示并且移除样式高亮
			$(this).addClass('textHighlight').next('span').find('[style]').show().removeClass('textHighlight');
		});
		$('a[style]').click(function(){//子模块点击事件
			$('a[style]').removeClass('textHighlight');//所有移除高亮样式
			$(this).addClass('textHighlight');//给点击模块加高亮样式
			$('.indent0ex').removeClass('textHighlight');//移除桌面模块高亮样式
			$('#colloaContent').load($(this).attr('url')+'.html');//在右边加载子模块所指向url
		});
		$('.indent0ex:last').click(function(){//注销按钮点击事件
			if(confirm('确定要注销吗'))
				location='login/login.html';
		});
	});