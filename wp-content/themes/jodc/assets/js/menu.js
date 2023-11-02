
jQuery(document).ready(function () {
  /* 6. Navigation open/close */
  jQuery(".menu-outline").on("click", function () {
    jQuery(".menu-outline, .nav-container").addClass("active");
  });

  jQuery(".menu-close").on("click", function () {
    jQuery(".menu-open, .nav-container").removeClass("active");
  });

  /* 7. Drop-down menu */
  jQuery(".dropdown-open").on("click", function () {
    jQuery(this).find(".dropdown").addClass("active");
    jQuery(".nav-link").addClass("done");
    jQuery(".dropdown-close").addClass("active");
  });

  jQuery(".dropdown-close").on("click", function () {
    jQuery(".dropdown").removeClass("active");
    jQuery(".nav-link").removeClass("done");
    jQuery(".dropdown-close").removeClass("active");
  });

});
/* 8. Change menu background */
jQuery(document).on("mouseover", ".nav-bg-change", function () {
  jQuery(this).addClass("active").siblings().removeClass("active");
});

