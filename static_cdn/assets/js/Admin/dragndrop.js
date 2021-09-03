const fill = document.querySelectorAll('.fill');
const empties = document.querySelectorAll('.empty');

var count = 0;
$(document).ready(function() {
    countFill();
});

for (const fills of fill) {
    fills.addEventListener('dragstart', dragStart);
    fills.addEventListener('dragend', dragEnd);
}

for (const empty of empties) {
    empty.addEventListener('dragover', dragOver);
    empty.addEventListener('dragenter', dragEnter);
    empty.addEventListener('dragleave', dragLeave);
    empty.addEventListener('drop', dragDrop);
}

function dragStart(e) {
    console.log(e.target.id);
    e.dataTransfer.setData("text", e.target.id);
    this.className += ' hold';
    setTimeout(() => (this.className = 'invisible'), 0);
}

function dragEnd() {
    this.className += ' fill';
    this.classList.remove('invisible');

    countFill();
}


function dragOver(e) {
    e.preventDefault();
}

function dragEnter(e) {
    e.preventDefault();
}

function dragLeave() {
    this.className += ' empty';
}

function dragDrop(e) {
    this.className += ' empty';
    const draggedElement = document.getElementById(e.dataTransfer.getData("text"));
    this.append(draggedElement);
}

function countFill() {
    count = $("#card1 > .fill").length;
    document.getElementById("span1").innerHTML = count + "/10";

    $('#card1').children('.fill').children('#button1').show();
    $('#card1').children('.fill').children('#button2').show();
    $('#card1').children('.fill').children('#button3').hide();
    $('#card1').children('.fill').children('#button4').hide();


    count = $("#card2 > .fill").length;
    document.getElementById("span2").innerHTML = count + "/10";

    $('#card2').children('.fill').children('#button1').hide();
    $('#card2').children('.fill').children('#button2').show();
    $('#card2').children('.fill').children('#button3').hide();
    $('#card2').children('.fill').children('#button4').hide();


    count = $("#card4 > .fill").length;
    document.getElementById("span4").innerHTML = count + "/10";

    $('#card4').children('.fill').children('#button1').hide();
    $('#card4').children('.fill').children('#button2').show();
    $('#card4').children('.fill').children('#button3').hide();
    $('#card4').children('.fill').children('#button4').hide();

    count = $("#card5 > .fill").length;
    document.getElementById("span5").innerHTML = count + "/10";

    $('#card5').children('.fill').children('#button1').hide();
    $('#card5').children('.fill').children('#button2').show();
    $('#card5').children('.fill').children('#button3').hide();
    $('#card5').children('.fill').children('#button4').hide();

}