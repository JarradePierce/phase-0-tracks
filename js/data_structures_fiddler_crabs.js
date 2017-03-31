var colors = ['red', 'blue', 'green', 'purple'];
var names = ['jack', 'ed', 'steve', 'tim'];

colors.push('yellow');
names.push('Will');

var horses = {};
for(var i = 0; i < names.length; i++){
	horses[names[i]] = colors[i];
};

//console.log(horses);

function Car(make, model, year){
	this.make = make;
	this.model = model;
	this.year = year;
	console.log(make, model, year);

	this.startEngine = function(){
		console.log("Vroom");
	}
}
nissan = new Car('nissan', '240sx', 1989);
honda = new Car('Honda', 'Civic', 2000);
ford = new Car('Ford', 'Mustang', 2000);

nissan;
honda;
ford;






