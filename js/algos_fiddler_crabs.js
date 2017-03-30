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
phrase('short longest middle')