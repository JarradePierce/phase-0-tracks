function phrase(word_arr){
	var word_length = 0;
	var words = word_arr.split(' ');
	for(var i = 0; i < words.length; i++){
		//checks if words length is greater than word_length
		if(words[i].length > word_length){
		// word_length is equal to the length of that word.
		var word_length = words[i].length;
		longest_word = words[i];
		}
	}
	console.log(longest_word);
	return longest_word;
}

function twoObjects(obj1_k, obj1_v, obj2_k, obj2_v){
	object1 = {}
	object2 = {}

	// pushing params to objects
	object1[obj1_k] = obj1_v;
	object2[obj2_k] = obj2_v

	//check if the keys or the values are equal
	if(obj1_k == obj2_k || obj1_v == obj2_v){
		// if true than display true and return true.
		console.log(true);
		return true;
		//else return false
	}else{
		console.log(false);
		return false;
	}
}


// create a function that takes a integer and prints a random word that many times.
var randomStrings = function(int){
	// count for the while loop
	var count = 0;
	//random words array
	var random_words = [];

	//alphabet needed to generate random words.
	alphabet = 'abcdefghijklmnopqrstuvwxyz';
	// split the alphabet to allow letters to be grabbed from the loop
	alpha = alphabet.split('');

	// while count is less than the parameter loop 
	while(count < int){
		//temporary array holds the word until the next loop starts
		temp_words = [];
		//random number genterator for the word length
		var random_word_length = Math.floor(Math.random()* 10 + 1);

		//loop through random_word_length to get a random set of letters
		for(var i = 0; i < random_word_length; i++){
			//rand_num_letters gives a random letter each loop
			rand_num_of_letters = Math.floor(Math.random()* 10 + 1);
			//random_letter is the value of alpha[rand_num_of_letters]
			random_letter = alpha[rand_num_of_letters];
			//push random_letter to temp words
			temp_words.push(random_letter);
		}
		//words is equal to temp_words and joined into a string.
		var words = temp_words.join('');
		// words is pushed into random_words to make a random word.
		random_words.push(words);
		//coounter counts up until loop is equal to parameter.
		count += 1;
	}

	//loop though random_words.length to display the random_words.
	for(var i = 0; i < random_words.length; i++){
		//console.log(random_words[i]);
	}
	return random_words
}

//var arr = [];
//arr.push(randomStrings(5));

//phrase(arr);
























