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
}

function twoObjects(obj1_k, obj1_v, obj2_k, obj2_v){
	object1 = {}
	object2 = {}

	// pushing params to objects
	object1[obj1_k] = obj1_v;
	object2[obj2_k] = obj2_v

	if(obj1_k == obj2_k || obj1_v == obj2_v){
		console.log(true);
		return true;
	}else{
		console.log(false);
		return false;
	}
}
twoObjects('jay', 27, 'kaila', 27);
