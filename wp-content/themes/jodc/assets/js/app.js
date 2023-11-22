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
  }, 1000); // 2000 milliseconds = 2 seconds

  ////////////////fill text animation start//////////////////////////////////////
  setTimeout(function () {
    jQuery(".myfill-title").css({
      "background-position": "0",
    });
  }, 900); // 2000 milliseconds = 2 seconds

  setTimeout(function () {
    jQuery(".myfill-text").css({
      "background-position": "0",
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

  $(window).on("scroll", function () {
    if ($(window).scrollTop() > 50) {
      $(".main-myheader").addClass("headerbOnscroll");
    } else {
      //remove the background property so it comes transparent again (defined in your css)
      $(".main-myheader").removeClass("headerbOnscroll");
    }
  });

  // Onscroll back to top button to be hide
  $(".to-top-btn").addClass("mPS2id-highlight");
  $(window).on("scroll", function () {
    if ($(window).scrollTop() < 90) {
      $(".to-top-btn").addClass("mPS2id-highlight");
    } else {
      //remove the background property so it comes transparent again (defined in your css)
      $(".to-top-btn").removeClass("mPS2id-highlight");
    }
  });

  // inview scroll animation
  // ********** for overlay text animations  *******************
  jQuery(".content-overlay, .malls-overlay").bind("inview", function (event, visible) {
    if (visible == true) {
      $(this).addClass("translateX-110");
    }
  });
  /***********  logos images overlay animation -------------*/
  jQuery(".sectors_thumnails_overlay").bind(
    "inview",
    function (event, visible) {
      if (visible == true) {
        jQuery(this).addClass("slide_amimation_time15_delay05");
      }
    }
  );

  /***********  contert para section animation -------------*/
  jQuery(".contentpara,.contentpara2,.blog-label,.partner-content-para").bind("inview", function (event, visible) {
    if (visible == true) {
      $(this).addClass("fade-anim");
    }
  });


  /***********  award section animation -------------*/
  jQuery(".item-award").bind("inview", function (event, visible) {
    if (visible == true) {
      $(".item-award img").addClass("fade-anim");
      $(".item-award p").addClass("fade-anim");
    }
  });


  /***********  progress bar animation -------------*/
  jQuery(".progress-bar-all").bind("inview", function (event, visible) {
    if (visible == true) {
      $(".progress-full").addClass("slide-progress");
    }
  });


  /***********  all title filling animation -------------*/
  jQuery(".content2").bind("inview", function (event, visible) {
    if (visible == true) {
      setTimeout(function () {
        jQuery(".content2").css({
          "background-position": "0",
        });
      }, 1000); // 2000 milliseconds = 2 seconds
    }
  });

  jQuery(".progress-h1").bind("inview", function (event, visible) {
    if (visible == true) {
      setTimeout(function () {
        jQuery(".progress-h1").css({
          "background-position": "0",
        });
      }, 1000); // 2000 milliseconds = 2 seconds
    }
  });
// headings animation
    
    jQuery(".paterner-content").bind("inview", function (event, visible) {
      if (visible == true) {
        setTimeout(function () {
          jQuery(".paterner-content").css({
            "background-position": "0",
          });
        }, 1000); // 2000 milliseconds = 2 seconds
      }
    });

  jQuery(".award-title").bind("inview", function (event, visible) {
    if (visible == true) {
      setTimeout(function () {
        jQuery(".award-title").css({
          "background-position": "0",
        });
      }, 1000); // 2000 milliseconds = 2 seconds
    }
  });

  jQuery(".myblog-title").bind("inview", function (event, visible) {
    if (visible == true) {
      setTimeout(function () {
        jQuery(".myblog-title").css({
          "background-position": "0",
        });
      }, 1000); // 2000 milliseconds = 2 seconds
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
          startValue += 1;
          valueDisplay.textContent = startValue;
          if (startValue == endValue) {
            clearInterval(counter);
          }
        }, duration);
      });

      // javascript
    }
  });

  //line animation
  jQuery(".line").bind("inview", function (event, visible) {
    if (visible == true) {
      jQuery(this).addClass("line_animation");
    } else {
      jQuery(this).removeClass("line_animation");
    }
  });

  //malls overlay animation
  setTimeout(function () {
    jQuery(".malls_overlay_animation").bind(
      "inview",
      function (event, visible) {
        if (visible == true) {
          jQuery(this).addClass("overlay_animation");
        }
        // else {
        //   jQuery(this).removeClass("overlay_animation");
        // }
      }
    );
  }, 1000);

  /********hide and show search script********/
  jQuery(".search_container").on("click", function (e) {
    jQuery(".search_holder").toggleClass("search_holder_show");
    e.preventDefault();
  });
});

jQuery(window).scroll(function () {
  if (jQuery(this).scrollTop() > 300) {
    jQuery(".haeder").addClass("haeder_scroll");
  } else {
    jQuery(".haeder").removeClass("haeder_scroll");
  }
});
