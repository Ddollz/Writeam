$(document).ready(function () {
    const editButton = document.querySelectorAll('.editButton');
    const pages = document.querySelectorAll('.page-modal');

    var pageNo = 0;

    for (const i of editButton) {
        i.addEventListener('click', nextPage);
    }

    function nextPage() {
        if (pageNo < pages.length - 1) {
            $(".userInfo").find(".page-modal.active").removeClass("active");
            console.log($(".userInfo").find(".page-modal.active"));
            pageNo++;
            $(pages[pageNo]).fadeIn("slow");
        }
    }

});