$(".accordion").on("click", function() {
    toggleSideBar(this);
});
    function toggleSideBar(el) {
        var className = $(el).attr("id");

        $('.panel').each(function(){
            if ($(this).attr('class').split(" ")[1] == className) {
                if ($(this).css("display") == "block") {
                    $(this).css("display", "none");
                } else {
                    $(this).css("display", "block");
                }
            } else {
                $(this).css("display", "none");
            }
        });
    }
