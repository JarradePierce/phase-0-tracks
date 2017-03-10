// method that takes a string parameter and reverses it
function reverse(str){
    var newString = " ";
    for (var i = str.length - 1; i >= 0; i--) {
        newString += str[i];
    }
    console.log(newString);
 

    if(newString == str){
    	console.log(true);
    }else{
    	console.log(false);
    }
    return newString;
}
reverse('hello');
