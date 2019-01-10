var sliders = [];

var nbSliders;

function affichageSliders() {
  resetSliders();
  nbSliders = document.getElementById('nbSliders').value;
  endroitOuAfficher = document.getElementById('affichageSliders');
  sliders = [];

  for (var i = 0; i < nbSliders; i++) {
    var newSlide = document.createElement('input');

    newSlide.id = "slider" + i;
    newSlide.type = "text";
    newSlide.class = "span2";

    slider_options = {
      orientation: "vertical",
      min:10,
      max:100,
      step: 0.01,
      value: [0.7, 1.1],
      min: 0.0,
      max: 2.0,
      handle: "triangle"
    }

    endroitOuAfficher.appendChild(newSlide);

    sliders.push(new Slider("#slider" + i, slider_options));

    var br = document.createElement('br');

    newSlide.appendChild(br);

  }
}

function resetSliders(){
  document.getElementById("affichageSliders").innerHTML = "";
}

function postData(){
  console.log("postData lancé");
  console.log(localStorage.getItem('myStorage'));

  jQuery(function($){
    jQuery.post("/sequence", JSON.parse(localStorage.getItem('myStorage')));
  });
}

function saveSequence(){
  localStorage.setItem('myStorage', writeString());
  postData();
}

function writeString(){
 var sequence = "{\"sequence\": [";

 for(var i = 0; i < nbSliders; i++){
   var valSliderActuel = document.getElementById("slider" + i).value;
   var speed = calculTps(calculDist(valSliderActuel));
   if(i != nbSliders - 1){
     sequence += "{\"name\": \"valve" + i + "\", \"type\": \"open\", \"time\": \"" + speed + "\"}, ";
   }else if(i != nbSliders -1){
     sequence += "{\"name\": \"valve" + i + "\", \"type\": \"closed\", \"time\": \"" + speed + "\"}, ";
   }else if(i == nbSliders - 1){
     sequence += "{\"name\": \"valve" + i + "\", \"type\": \"open\", \"time\": \"" + speed + "\"}]}";
   }else if(i == nbSliders -1){
     sequence += "{\"name\": \"valve" + i + "\", \"type\": \"closed\", \"time\": \"" + speed + "\"}]}";
   }
 }
 return sequence;
};

function calculTps(dist){
  return Math.sqrt((2*dist)/9.81);
}

function calculDist(valSliderActuel){
  var emplacementVirgule = valSliderActuel.indexOf(',');
  var premiereValeur = valSliderActuel.slice(0, emplacementVirgule);
  var secondeValeur = valSliderActuel.slice(emplacementVirgule+1, valSliderActuel.lenght);
  return secondeValeur - premiereValeur
}

function getData(){
  var sequence = jQuery.ready(function(){
    $.getJSON("/sequence?num_valves=10", function(data,status,xhr){
      readSequence(data);
    });
  });
}

function readSequence(sequence){
  resetSliders();
  var listEvent = sequence["sequence"];

  for (var i = 0; i < listEvent.lenght; i++) {
    var valeurs = listEvent[i];
    var newSlide = document.createElement('input');

    newSlide.id = "slider" + i;
    newSlide.type = "text";
    newSlide.class = "span2";

    slider_options = {
      orientation: "vertical",
      min:10,
      max:100,
      step: 0.01,
      value: [valeurs["time"]],
      min: 0.0,
      max: 2.0,
      handle: "triangle"
    }
  }
}
