var disable = false;
$(".page").on("click", function() {
    if (!disable) {
        toggleSideBar(this);
    }
});

function toggleSideBar(el) {
    disable = true;
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

    setTimeout(disable = false, 1000);
}

function makeActive(current, className) {
    $('.fake_body.'+className).css('z-index', '5')
    $('#'+className).addClass('active');
    $('.fake_body.'+className).addClass('active_panel full');
    setTimeout(function() {
        $('.fake_body.'+className).css('z-index', '3');
    }, 1000)
}

function removeActive(current, className) {
    $('.fake_body.'+className).css('z-index', '3');
    setTimeout(function() {
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
        $('.panel.'+className).removeClass('active_panel');
    }, 500);
}

function toggleEdit(current, className) {
    if ($('.panel.'+className).hasClass('active_panel')) {
        $('.panel.'+className).removeClass('active_panel');
        $('#'+className).find('i').css('transform', 'rotate(0deg)');
    } else {
        $('.panel.'+className).addClass('active_panel');
        $('#'+className).find('i').css('transform', 'rotate(45deg)');
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