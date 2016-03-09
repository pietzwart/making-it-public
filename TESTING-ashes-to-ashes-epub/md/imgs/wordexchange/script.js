var time = 1000; 
var counter = 0;


var changeWords = function(){
	var textEl = document.getElementById("gettext");
	var text = textEl.innerHTML;
	var words = text.split(" ");
	
	var removeWord = words.splice(Math.floor(Math.random() * words.length), 1);
	var index = words.indexOf(removeWord);
	
	if (index > -1) {
	    words.splice(index, 1);
	}
	
	var removeWord = removeWord.toString();
	
	// add word into the array
	words.splice(Math.floor(Math.random() * words.length) + 1, 0, removeWord)
	
	// make a string out of the array and use a " " to connect array content
	var words = words.join(" ");
	
	//console.log(removeWord, words)
	
	textEl.innerHTML = '';
	textEl.innerHTML = words;
	
	// soll schneller werden. Tut aber nicht. 
	time = time - 200;
	//console.log(time);
}


setInterval(changeWords, 1000)

