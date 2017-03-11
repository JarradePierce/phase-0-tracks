function phrase(word_arr){
	var word_length = 0;
	words = word_arr.split(' ');
	for(var i = 0; i < words.length; i++){
		//checks if words length is greater than word_length
		if(words[i].length > word_length){
		// word_length is equal to the length of that word.
		var word_length = words[i].length;
		longest_word = words[i];
		}
	}
	console.log(longest_word);
}


function two_objects(obj_k, obj_v, obj2_k, obj2_v){
	object1 = {};
	object2 = {};

	object1[obj_k] = obj_v;
	object2[obj2_k] = obj2_v;

	if(obj_k == obj2_k || obj_v == obj2_v){
		console.log(true);
	}else{
		console.log(false);
	}

}

//create random words using the parameter as the amount of words in the array
function integer_length(number){
	//array of random words
	random_words = [];
	// holds the new random letters and pushes them to the random_word array
	random_word_arr = [];
	// rand_count counts up until it equals the numbers parameter. then breaks the while loop
	rand_count = 1;
	//the alphabet used by random_number to grab a random letter at a random index in alpha.
	alpha = "abcdefghijklmnopqurstuvwxyz";

	//while the rand_count is less then the number it will loop through
	//create random letters and push them to random_word_arr
	//then the variable random_word equals to random_word_arr.join('')
	//random_word is pushed into the random_words array
	while(rand_count <= number){
		random_count = Math.ceil(Math.random(1) * 10);
		for(var i = 0; i < random_count; i++){
			random_number = Math.floor(Math.random(1) * 26);
			random_letter= alpha[random_number];
			random_word_arr.push(random_letter);
			}

		random_word = random_word_arr.join('');
		random_words.push(random_word);
		random_word_arr = [];

		rand_count++;
	}

	//prints the random_words array
	for(var i = 0; i < random_words.length; i++){
		console.log(random_words[i]);
	}
}

//phrase("Ruby javascript Rspec Rails");
//two_objects("tre", 27, "jay", 27);
integer_length(7);













