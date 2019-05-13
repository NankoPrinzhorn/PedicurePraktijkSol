$(".page").on("click", function() {
    toggleSideBar(this);
});

function toggleSideBar(el) {
    var className = $(el).attr("id");


    $('.panel').each(function(){ 
        var currentClass = $(this).attr('class').split(' ')[1];
        if($(this).hasClass(className)) {
            makeActive(this, currentClass)
        } else {
            removeActive(this, currentClass);
        }
    });
    return;

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
    setTimeout(function() {
        $('#'+className).addClass('active');
        $('.fake_body.'+className).addClass('active_panel full');
    }, 500);
    
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
        $(' .fake_body.'+className).removeClass('full');
    }
    
    // $(current).removeClass('active_panel');
}

function toggleEdit(current, className) {
    if (!$('.panel.'+className).hasClass('full')) {
        $('.fake_body.'+className).addClass('full');
        $('.'+className).removeClass('active_panel');
        $('#'+className).find('i').css('transform', 'rotate(0deg)');

    } else {
        $('.panel.'+className).addClass('active_panel');
        $('.fake_body.'+className).removeClass('full');
        $('#'+className).find('i').css('transform', 'rotate(45deg)');
    }
}