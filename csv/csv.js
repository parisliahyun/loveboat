  window.onload = function() { init() };

  var public_spreadsheet_url = 'https://docs.google.com/spreadsheet/pub?key=0AuZMGuR3ulpfdFpGNld2VmZqdk0xR1R4dXpvMUJvZFE&output=html';

  function init() {
    Tabletop.init( { key: public_spreadsheet_url,
                     callback: showInfo,
                     simpleSheet: true } )
  }

  function showInfo(data, tabletop) {
    alert("Successfully processed!")
    console.log(data);
    newData = data;
  }


function addUser(newData){
  var div = document.createElement("div");
  div.className = "newData"

  var p = document.createElement("p");
  p = newData[0].value
  div.appendChild(p);

  document.body.appendChild(div);

}




