$( document ).ready(function(){
	$(".BirimFiyatAgaciIcerik li a").click(function(){
		if($(this).parent().children("ul").hasClass("listAcKapa")){
			$(this).parent().children("ul").removeClass("listAcKapa");
			$(this).children(".listSimge").html("+");
		}
		else{
			$(this).parent().children("ul").addClass("listAcKapa");
			if($(this).parent().children("ul").hasClass("listAcKapa")){
				$(this).children(".listSimge").html("-");
			}
		}
	});


	$(".detaylar:eq(0)").addClass("altBirimGoster");
	$(".birimBtnList span:eq(0)").addClass("birimBtnListActive");
	$(".birimBtnList span").click(function(){
		thisIndex=$(this).index();
		if ($(this).hasClass("birimBtnListActive")){}
		else{
			$(this).addClass("birimBtnListActive");
			$(this).nextAll().removeClass("birimBtnListActive");
			$(this).prevAll().removeClass("birimBtnListActive");
		}
		if($(".detaylar:eq("+ thisIndex +")").hasClass("altBirimGoster")){}
		else{
			$(".detaylar:eq("+ thisIndex +")").addClass("altBirimGoster");
			$(".detaylar:eq("+ thisIndex +")").nextAll().removeClass("altBirimGoster");
			$(".detaylar:eq("+ thisIndex +")").prevAll().removeClass("altBirimGoster");
		}
		
	});
});
