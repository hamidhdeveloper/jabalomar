jQuery(document).ready(function () {
  setTimeout(function () {
    jQuery(".loader").css({
      "-webkit-transform": "translateX(110%)",
      "-ms-transform": "translateX(110%)",
      transform: "translateX(110%)",
      visibility: "hidden",
    });
  }, 300);

  setTimeout(function () {
    jQuery(".logo").css({
      "-webkit-transform": "translateY(0)",
      "-ms-transform": "translateY(0)",
      transform: "translateY(0)",
    });
  }, 700); // 2000 milliseconds = 2 seconds

  ////////////////fill text animation start//////////////////////////////////////
  setTimeout(function () {
    jQuery(".myfill-title").css({
      'background-position': '0',
    });
  }, 900); // 2000 milliseconds = 2 seconds

  setTimeout(function () {
    jQuery(".myfill-text").css({
      'background-position': '0',
    });
  }, 1100); // 2000 milliseconds = 2 seconds

  ////////////////////fill text animation end/////////////////////////////

  jQuery(".responsive_menu").click(function () {
    jQuery(".responsive_menu_container").css("display", "block");
  });

  jQuery(".close_icon").click(function () {
    jQuery(".responsive_menu_container").css("display", "none");
  });

  jQuery(".line").bind("inview", function (event, visible) {
    if (visible == true) {
      jQuery(this).addClass("line_animation");
    } else {
      jQuery(this).removeClass("line_animation");
    }
  });

  jQuery(".widget").bind("inview", function (event, visible) {
    if (visible == true) {
      jQuery(this).addClass("animate__animated animate__slideInUp");
      jQuery(this).css("visibility", "visible");
    }
  });

  jQuery("h2").bind("inview", function (event, visible) {
    if (visible == true) {
      jQuery(this).addClass("animate__animated animate__slideInUp");
      jQuery(this).css("visibility", "visible");
    }
  });

  jQuery(".news_title").bind("inview", function (event, visible) {
    if (visible == true) {
      jQuery(this).addClass("animate__animated animate__slideInUp");
      jQuery(this).css("visibility", "visible");
    }
  });

  jQuery(".partners_inner_container").bind("inview", function (event, visible) {
    if (visible == true) {
      jQuery(this).addClass("animate__animated animate__slideInUp");
      jQuery(this).css("visibility", "visible");
    }
  });

  //accordion
  var acc = document.getElementsByClassName("accordion");
  var i;

  for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function () {
      this.classList.toggle("active");
      var panel = this.nextElementSibling;
      if (panel.style.display === "block") {
        panel.style.display = "none";
      } else {
        panel.style.display = "block";
      }
    });
  }

// my jquery start here



//   onscroll apply background to header 

$(window).on("scroll", function() {
    if($(window).scrollTop() > 50) {
        $(".main-myheader").addClass("headerbOnscroll");
        
    } else {
        //remove the background property so it comes transparent again (defined in your css)
       $(".main-myheader").removeClass("headerbOnscroll");
    }
});

// Onscroll back to top button to be hide
$(".to-top-btn").addClass("mPS2id-highlight");
$(window).on("scroll", function() {
  if($(window).scrollTop() < 90) {
      $(".to-top-btn").addClass("mPS2id-highlight");
  } else {
      //remove the background property so it comes transparent again (defined in your css)
     $(".to-top-btn").removeClass("mPS2id-highlight");
  }
});








// inview scroll animation
// ********** for overlay text animations  *******************
jQuery(".overlay-text-animation").bind("inview", function (event, visible) {
  if (visible == true) {
    $(".overlay-loading1").addClass("translateX-110");
  $(".overlay-loading2").addClass("translateX-110");
  }
});
/***********  logos images overlay animation -------------*/ 
jQuery(".partner-main-container").bind("inview", function (event, visible) {
if (visible == true) {
  $(".sectors_thumnails_overlay").addClass("slide_amimation_time15_delay05");
}
});


/***********  logos images overlay animation -------------*/ 
jQuery(".partner-main-container").bind("inview", function (event, visible) {
if (visible == true) {
  $(".sectors_thumnails_overlay").addClass("slide_amimation_time15_delay05");
}
});

/***********  progress bar animation -------------*/ 
jQuery(".progress-bar-all").bind("inview", function (event, visible) {
if (visible == true) {
  $(".progress-full").addClass("slide-progress");
}
});



/***********  counter section animation -------------*/ 
jQuery(".content2iconboxes").bind("inview", function (event, visible) {
if (visible == true) {
  //javascript
   // for counter animation
   
   let valueDisplays = document.querySelectorAll(".num");
   let interval = 4000;
   
   valueDisplays.forEach((valueDisplay) => {
     let startValue = 0;
     let endValue = parseInt(valueDisplay.getAttribute("data-val"));
     let duration = Math.floor(interval / endValue);
     let counter = setInterval(function () {
       startValue +=1;
       valueDisplay.textContent = startValue;
       if (startValue == endValue) {
         clearInterval(counter);
       }
     }, duration);
   });


  // javascript
}
});

// my jquery end here




});

jQuery(window).scroll(function () {
  if (jQuery(this).scrollTop() > 150) {
    jQuery(".main_menu_main_container").addClass(
      "main_menu_main_container_fixed"
    );
    jQuery(".main_menu_main_container").addClass(
      "animate__animated animate__fadeInDown"
    );
  } else {
    jQuery(".main_menu_main_container").removeClass(
      "main_menu_main_container_fixed"
    );
    jQuery(".main_menu_main_container").removeClass(
      "animate__animated animate__fadeInDown"
    );
  }
});

jQuery(window).scroll(function () {
  if (jQuery(this).scrollTop() > 300) {
    jQuery(".side_socila_media").addClass("side_socila_media_scroll");
  } else {
    jQuery(".side_socila_media").removeClass("side_socila_media_scroll");
  }
});




        
