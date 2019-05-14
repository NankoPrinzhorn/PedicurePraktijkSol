$(".page").on("click", function() {
    toggleSideBar(this);
});

function toggleSideBar(el) {
    var className = $(el).attr("id");

    $('.panel').each(function(){ 
        var currentClass = $(this).attr('class').split(' ')[1];
        if($(this).hasClass(className)) {
            if(!$('.fake_body.'+className).hasClass('active_panel') && !$('.fake_body.'+className).hasClass('full')) {
                makeActive(this, currentClass);
            } else {
                toggleEdit(this, currentClass)
            }
        } else {
            removeActive(this, currentClass);
        }


    });
}

function makeActive(current, className) {
    $('#'+className).addClass('active');
    $('.fake_body.'+className).addClass('active_panel full');
}

function removeActive(current, className) {
    //listing
    if ($('#'+className).hasClass('active')) {
        $('#'+className).removeClass('active');
        $('#'+className).find('i').css('transform', 'rotate(0deg)');
    }
    
    //fake body
    if ($('.fake_body.'+className).hasClass('active_panel') || $('.fake_body.'+className).hasClass('full')) {
        $('.fake_body.'+className).removeClass('active_panel');
        $('.fake_body.'+className).removeClass('full');
    }

    //
}

function toggleEdit(current, className) {
    if ($('.panel.'+className).hasClass('active_panel')) {
        $('.panel.'+className).removeClass('active_panel');
    } else {
        $('.panel.'+className).addClass('active_panel');
    }
    return;
    if ($('.fake_body.'+className).hasClass('full')) {
        console.log('YEET');
        $('#'+className).find('i').css('transform', 'rotate(45deg)');
        $('.fake_body.'+className).removeClass('full');
        $('.panel.'+className).addClass('active_panel');
    } else {
        $('#'+className).find('i').css('transform', 'rotate(45deg)');
        $('.fake_body.'+className).addClass('full');
        $('.panel.'+className).removeClass('active_panel');
    }
    return;
    if ($('.panel.'+className).hasClass('active_panel')) {
        $('.fake_body.'+className).addClass('full');
        $('.'+className).removeClass('active_panel');
        $('#'+className).find('i').css('transform', 'rotate(0deg)');
    } else {
        $('.panel.'+className).addClass('active_panel');
        $('.fake_body.'+className).removeClass('full');
        $('#'+className).find('i').css('transform', 'rotate(45deg)');
    }
}