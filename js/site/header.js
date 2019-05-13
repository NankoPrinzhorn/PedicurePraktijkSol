anime({
    targets: '#desktop-menu li',
    translateY: [100, 0],
    opacity: [0,1],
    delay: anime.stagger(100),
});



$('#mobile-nav-btn').on("click", function () {
    $(this).toggleClass('mobile-nav-btn-active');
    $('#mobile-overlay').toggleClass('mobile-overlay-active');
    $('#mobile-menu').toggleClass('mobile-menu-active');
    $('body, html').toggleClass('no-scroll');
})

$(window).scroll(function () {
    if ($(this).scrollTop() > 80) { // this refers to window
        if ($("#navbar-brand-logo").attr("src") != "/images/logo.svg") {
            $("#navbar-brand-logo").attr("src","/images/logo.svg");
            $('#navbar').addClass('navbar-scrolled');    
        }      
    } else {
        if ($("#navbar-brand-logo").attr("src") != "/images/logo_w.svg") {
            $("#navbar-brand-logo").attr("src","/images/logo_w.svg");
            $('#navbar').removeClass('navbar-scrolled');
        }
    }
});

$(window).on("load", function () {
    $('#preload').addClass('preload-complete')
});

$('a').click(function (event) {
    var url = $(this).attr('href');
    event.preventDefault();
    $('#preload').addClass('preload-loading');
    setTimeout(function () {
        window.location.href = url;
    }, 500);
})


