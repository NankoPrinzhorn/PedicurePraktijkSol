$(".accordion").on("click", function() {
    toggleSideBar(this);
});

function toggleSideBar(el) {
    var className = $(el).attr("id");

    $('.panel').each(function(){
        if ($(this).attr('class').split(" ")[1] == className) {
            $(this).slideDown('slow');
        } else {
            $(this).slideUp('slow');
        }
    });
}
