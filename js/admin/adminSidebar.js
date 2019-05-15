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
        setTimeout(function() {
            $('.panel.'+className).removeClass('active_panel');
            $('#'+className).find('i').css('transform', 'rotate(0deg)');
        }, 250)
    } else {
        setTimeout(function() {
            $('.panel.'+className).addClass('active_panel');
            $('#'+className).find('i').css('transform', 'rotate(45deg)');
        }, 250)
    }
}