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
            pageNo++;
            $(pages[pageNo]).fadeIn("slow");
        }
    }

    //drag and drop
    const draggables = document.querySelectorAll('.draggable')
    const containers = document.querySelectorAll('.drag-body')

    containers.forEach((container, index) => {
        const countDraggableInContainer = container.querySelectorAll('.draggable')
        const getSpanCounter = container.querySelector('.count');
        getSpanCounter.innerHTML = countDraggableInContainer.length + "/10";

        const getAddButtons = container.querySelectorAll('.addScore');
        const getViewButtons = container.querySelectorAll('.viewScore');

        if (container.classList.contains("screening") && getViewButtons && getAddButtons) {
            var index = 0, length = getAddButtons.length;
            for (; index < length; index++) {
                getAddButtons[index].style.display = "Block";
                getViewButtons[index].style.display = "None";
            }
        }
    })

    draggables.forEach(draggable => {
        draggable.addEventListener('dragstart', () => {
            draggable.classList.add('dragging')
        })

        draggable.addEventListener('dragend', () => {
            if (draggable.parentElement.classList.contains('onboarding')) {
                console.log(draggable)
                var url = draggable.getAttribute("data-url");
                // console.log(draggable.parentElement)
                location.replace(url)
            }
            else if (draggable.parentElement.classList.contains('repreview')) {
                var url = draggable.getAttribute("data-url");
                location.replace(url)
            } else if (draggable.parentElement.classList.contains('screening')) {
                var url = draggable.getAttribute("data-url");
                location.replace(url)
            }

            draggable.classList.remove('dragging')

            containers.forEach((container, index) => {
                const countDraggableInContainer = container.querySelectorAll('.draggable')
                const getSpanCounter = container.querySelector('.count');
                getSpanCounter.innerHTML = countDraggableInContainer.length + "/10";

                const getAddButtons = container.querySelectorAll('.addScore');
                const getViewButtons = container.querySelectorAll('.viewScore');

                if (container.classList.contains("screening") && getViewButtons && getAddButtons) {
                    var index = 0, length = getAddButtons.length;
                    for (; index < length; index++) {
                        getAddButtons[index].style.display = "Block";
                        getViewButtons[index].style.display = "None";
                    }
                } else if (container.classList.contains("onboarding") && getViewButtons && getAddButtons) {
                    var index = 0, length = getAddButtons.length;
                    for (; index < length; index++) {
                        getAddButtons[index].style.display = "None";
                        getViewButtons[index].style.display = "Block";
                    }
                } else if (container.classList.contains("repreview") && getViewButtons && getAddButtons) {
                    var index = 0, length = getAddButtons.length;
                    for (; index < length; index++) {
                        getAddButtons[index].style.display = "None";
                        getViewButtons[index].style.display = "Block";
                    }
                }
            })
        })
    })

    containers.forEach(container => {
        container.addEventListener('dragover', e => {
            e.preventDefault()
            const afterElement = getDragAfterElement(container, e.clientY)
            const draggable = document.querySelector('.dragging')
            if (afterElement == null) {
                container.appendChild(draggable)
            } else {
                container.insertBefore(draggable, afterElement)
            }
        })
    })

    function getDragAfterElement(container, y) {
        const draggableElements = [...container.querySelectorAll('.draggable:not(.dragging)')]

        return draggableElements.reduce((closest, child) => {
            const box = child.getBoundingClientRect()
            const offset = y - box.top - box.height / 2
            if (offset < 0 && offset > closest.offset) {
                return { offset: offset, element: child }
            } else {
                return closest
            }
        }, { offset: Number.NEGATIVE_INFINITY }).element
    }
});