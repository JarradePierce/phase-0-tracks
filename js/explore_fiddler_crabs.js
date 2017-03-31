/*create a function that takes a string.
	reverse the string
*/
//create array that stores the letters of the word
// loop the word_arr
// start the loop at the end of the word (word.length)
//loop until i is less than or equal to 0
// loop runs backwards from the string length (i--)
//push all letters to word_arr
// end the loop at the first item in the word index
//join the word_arr into a new string.
//return the new string

function reverse(word){
	var word_arr = []

	for(var i = word.length; i >= 0; i--){
		word_arr.push(word[i])
	}
	var new_word = word_arr.join('')
	return new_word
}
var jay = reverse("jay")
if(jay.length == jay.length){
	console.log(jay)
}