#THE STUFF I NEEDED TO REVIEW FROM LAST WEEK

##The love boat exercise was a way to get practice on some of the concepts below. 

##MIDDLE EARTH
* var shire = document.getElementsByTagName('article')[0];
* calling functions at the end of the function
* Using text.Content:
- buddy.textContent = buddies[i];
* attaching aside to rivendell, using getElementsByTagName:
- var rivendell = document.getElementsByTagName('article')[1];
- rivendell.parentNode.insertBefore(asideTag, rivendell);
* using alert in a loop
  - alert(buddy.textContent + " has joined the party");
- }

##'CHEESY' LECTURE

##ATM
* var amount = parseInt(this.amount.value);

##UNDERSCORE
* need to practice using these methods

#Conclusions for my reviewing the material:

##MIDDLE EARTH
* GetElementsByTagName is useful when appending an element to an element in the middle of a list, i.e. Rivendell which has an index of 1 in the list of Lands.
* text.Content is used to set the text within a node.
* syntax for calling a function (seen a lot in the LOTR lab): after the closing curly brace call the function with functionName(); or with an argument(s): functionName(argument)();
* for loop syntax for arrays:
  - for (var i = 0; i < array.length; i++) {
  - var arrayItem = document.createElement('li');
  - arrayItem.textContent = array[i];
  - ulName.appendChild(arrayItem);
  }
* alert syntax: alert(what you want the alert to say); i.e.:
- alert(buddy.textContent + " has joined the party");

##Cheesy
* Got it. 

##ATM
*  amount is defined here: this.amount = document.getElementById(this.name + "_amount");
* fuzzy on how self = this works. Why do we need that? 
* unsure when we need window.onload and when we don't. Why didn't we need it for Middle Earth? 

##Underscore
*Some methods I played with in the console:

_.filter
var array = [1, 2, 3, 4, 5];
var evens = _.filter(array, function(num){return num % 2 == 0;});
evens
=> [2,4]

_.each(array, alert);
=> creates 5 annoying pop ups with each element of the array in it. 

_.bind(function, object, [*arguments]) 

var func = function(greeting) {return greeting + " " + this.name};
func = _.bind(func, {name: 'mr. rogers'}, 'well, hello');
function () { [native code] }
func();
"well, hello mr. rogers"

var func = function(length) {this.name.length};
undefined
var func = function(length) {return this.name.length};
undefined
func = _.bind(func, {name: 'boy george'})
function () { [native code] }
func();
10

var func = function(color){return color + " " + this.message};
func = _.bind(func, {message: "is a beautiful color"}, 'Green');
function () { [native code] }
func();
"Green is a beautiful color"

##See loveboat. Something I made to practice the above. 









