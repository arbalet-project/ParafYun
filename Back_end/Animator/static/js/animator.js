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

function saveSequence(){
     var events = [];

     for(var i = 0; i < nbSliders; i++){
       var valSliderActuel = document.getElementById("slider" + i).value;
       var speed = calculTps(calculDist(valSliderActuel));
       events.push({"name": "valve" + i, "type": "open", "time": speed});
       events.push({"name": "valve" + i, "type": "close", "time": speed});

    }
    mySequence = {sequence: events};
    axios.post('/sequence', mySequence)
      .then(function (response) {
        console.log("Séquence mise à jour avec succès");
      })
      .catch(function (error) {
        console.log("Erreur de mise à jour de la séquence");
      });
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
  axios.get('/sequence', {
    params: {
      num_valves: 10
    }
  })
  .then(function (response) {
    console.log("Séquence reçue avec succès");
    readSequence(response);
  })
  /*.catch(function (error) {
    console.log("Erreur de récupération de la séquence");
  })

}

function readSequence(sequence){
  resetSliders();
  var listEvent = sequence["sequence"];

  for (var i = 0; i < listEvent.length; i++) {
    var valeurs = listEvent[i];
    var newSlide = document.createElement('input');

    newSlide.id = "slider" + i;
    newSlide.type = "text";
    newSlide.class = "span2";
      console.log("5");
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
