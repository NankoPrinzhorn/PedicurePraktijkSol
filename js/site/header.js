$('#mobile-nav-btn').on("click", function () {
    $(this).toggleClass('mobile-nav-btn-active');
    $('#mobile-overlay').toggleClass('mobile-overlay-active');
    $('#mobile-menu').toggleClass('mobile-menu-active');
    $('body, html').toggleClass('no-scroll');
})

$(window).scroll(function () {
    if ($(this).scrollTop() > 200) { // this refers to window
        $('#navbar').addClass('navbar-scrolled');
    } else {
        $('#navbar').removeClass('navbar-scrolled');
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