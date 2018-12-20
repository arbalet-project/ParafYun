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
  jQuery(function($){
    var dataToPost = enregistrer();

    jQuery.post("/Sequence", dataToPost);
  });
}


function enregistrer(){
  var dicoContenu = [];
  var stringBase = "#slider";

  for(var i = 0; i < nbSliders; i++){
    var valSliderActuel = document.getElementById("slider" + i).value;
    dicoContenu += {"nom" : "stringBase" + i, "type" : "open", "time" : valSliderActuel};
  }

  var sequence = {"Sequence" : dicoContenu};

  return sequence;
}
