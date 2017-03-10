
function Todo(name){
	this.list = {};
	this.completed = false;
	this.is_completed = true;
	this.name = name;


	this.add_item = function(item){
		this.list[item] = this.completed;
	}

	this.complete_item = function(item){
		this.list[item] = this.is_completed;
	}

	this.show = function(){
		console.log(this.name);
		for(var item in this.list){
			this.list[item] = this.list[item];
			console.log(item + ": item complete? " + this.list[item]);
		}
	}

	this.remove_item = function(item){
		delete this.list[item];
	}

}
todo = new Todo("Learning List");
todo.add_item("Javascript");
todo.add_item("objects");
todo.add_item("arrays");
todo.add_item("iterations");
todo.complete_item("javascript");
todo.show();