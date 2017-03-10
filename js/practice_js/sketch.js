var todo;

function draw(){
	todo = new Todo("Learning list");
	todo.add_item("javascript");
	todo.add_item("objects");
	todo.show();
}
draw();