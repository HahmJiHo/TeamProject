$(document).ready(function() {    
  
  $('header').on("click", ".navbar", function(e) {
	$('.nav').slideToggle();	
    console.log("aa")
  });    
    
  
  $(".title-nav li").click(function(){
     var thisIndex = $(this).index();
     $(".artice").hide();
     $(".artice").eq(thisIndex).show();
     
     $(".title-nav li a").removeClass("active");
     $(".title-nav li a").eq(thisIndex).addClass("active");  
     return false;
    });
  $(".title-nav li").eq(0).click();  
  
})


