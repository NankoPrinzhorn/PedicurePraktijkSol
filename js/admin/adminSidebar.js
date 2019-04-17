$(".page").on("click", function() {
    toggleSideBar(this);
});

function toggleSideBar(el) {
    var className = $(el).attr("id");

    $('.panel').each(function(){
        var currentClass = $(this).attr('class').split(' ')[1];
        if ($(this).hasClass(className)) {
            makeActive(this, currentClass);                        

            toggleEdit(this, currentClass);
        } else {
            removeActive(this, currentClass);
        }
    });
}

function makeActive(current, className) {
    $('#'+className).addClass('active');
    $('.fake_body.'+className).addClass('active_panel');
}

function removeActive(current, className) {
    $(current).removeClass('active_panel');
    $('#'+className).removeClass('active');
    $('.fake_body.'+className).removeClass('active_panel');
    $('.fake_body.'+className).removeClass('full');
    $('#'+className).find('i').css('transform', 'rotate(0deg)');
}

function toggleEdit(current, className, bool = true) {
    if ($('.panel.'+className).hasClass('active_panel') || bool == false) {
        $('.fake_body.'+className).addClass('full');
        $('.'+className).removeClass('active_panel');
        $('#'+className).find('i').css('transform', 'rotate(0deg)');

    } else {
        $('.panel.'+className).addClass('active_panel');
        $('.fake_body.'+className).removeClass('full');
        $('#'+className).find('i').css('transform', 'rotate(45deg)');
    }
}