function peopleContainer() {
  this.peopleList = [];
}

peopleContainer.prototype.push = function (imageUrl){
  this.peopleList.push(imageUrl);
}

function appendImg(newContent, ul) {

  var img = document.createElement("img");
  img.src = newContent;
  img.setAttribute('height','150px');
  ul.appendChild(img);
}

function appendPeople(images, ul) {
  ul.innerHTML = "";
  WTK.each(images.peopleList, function(imageUrl) {
    appendImg(imageUrl, ul);
  });
}

function displayResult()
    {
    document.body.style.backgroundImage= "url('http://images4.wikia.nocookie.net/__cb20130918050643/jamescameronstitanic/images/a/a0/Ship-titanic.jpg')";
    }

function addDolphins()
    {
    var container = document.querySelector("div.container");
    var dolphinImg = document.createElement("img");  
    dolphinImg.src = 'http://wwwdelivery.superstock.com/WI/223/1829/PreviewComp/SuperStock_1829-9291.jpg';
    dolphinImg.setAttribute('height','200px');
    container.appendChild(dolphinImg);
    }    


function addLeoKate()
    {
    var container = document.querySelector("div.container");
    var leokateDiv = document.createElement("div");
    leokateDiv.id = "leo-kate"; 
    container.appendChild(leokateDiv)
    var div = document.querySelector("div.leo-kate");
    var leokateImg = document.createElement("img");
    leokateImg.src = 'http://static.guim.co.uk/sys-images/Arts/Arts_/Pictures/2007/12/10/Titanic460.jpg';
    leokateImg.setAttribute('height','200px');
    leokateDiv.appendChild(leokateImg);

    songs = document.getElementsByTagName('audio');
    songs[0].addEventListener();
    songs[0].play();
  }

window.people = new peopleContainer();


function ourSweetLoadFunction() {
  console.log("Loaded");
  var ul = document.querySelector("ul.people-list");
  var form = document.querySelector("form.add-person");
  form.addEventListener("submit", function(e) {
    e.preventDefault();
    var input = this.elements["imageUrl"];
    window.people.push(input.value);
    window.appendPeople(window.people, ul);
    input.value = "";
    displayResult();
  });

  window.appendPeople(window.people, ul);

}

window.onload = ourSweetLoadFunction;



