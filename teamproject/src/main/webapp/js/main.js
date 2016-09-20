$(function() {     
  var navBar = $('.navbar')
    , $nav = $('.nav'); 
  
  $(navBar).click(function() {
    $nav.slideToggle();	
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


