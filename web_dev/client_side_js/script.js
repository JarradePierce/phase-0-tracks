var title = document.getElementById('title');
var red = document.getElementById('red');
var blue = document.getElementById('blue');
var green = document.getElementById('green');
var button = document.getElementById('button');
var header = document.getElementById('header');



function changeTitleColor(){
	title.style.color ='red';
	title.innerHTML = "Red";
}

function changeTitle2Color(){
	title.style.color ='blue';
	title.innerHTML = 'Blue';
}

function changeTitle3Color(){
	title.style.color = 'green';
	title.innerHTML = "Green";
}

function changeBackground(){
	header.style.background = 'lightblue';
}

red.addEventListener("click", changeTitleColor);
blue.addEventListener("click", changeTitle2Color);
green.addEventListener("click", changeTitle3Color);
button.addEventListener("click", changeBackground);






