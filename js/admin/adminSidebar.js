$(".page").on("click", function() {
    toggleSideBar(this);
});

function toggleSideBar(el) {
    var className = $(el).attr("id");

    $('.panel').each(function(){
        var currentClass = $(this).attr('class').split(' ')[1];
        if ($(this).hasClass(className)) {
            if ($('#'+className).hasClass('active')) {
                // removeActive(this, currentClass);
                toggleEdit(this, currentClass);
            }
            makeActive(this, currentClass);            

        } else {
            removeActive(this, currentClass);
        }
    });
}

function makeActive(current, className) {
    $('#'+className).addClass('active');
}

function removeActive(current, className) {
    $(current).removeClass('active_panel');
    $('#'+className).removeClass('active');
}

function toggleEdit(current, className) {
    if ($('.'+className).hasClass('active_panel')) {
        $(current).removeClass('active_panel');
        $('#'+className).find('i').css('transform', 'rotate(0deg)');
    } else {
        $(current).addClass('active_panel');
        $('#'+className).find('i').css('transform', 'rotate(45deg)');
    }
}