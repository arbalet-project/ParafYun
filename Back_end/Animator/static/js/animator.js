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
       var emplacementVirgule = valSliderActuel.indexOf(',');
       var tempsOuverture = calculTps(valSliderActuel.slice(1,emplacementVirgule));
       var tempsFermeture = calculTps(valSliderActuel.slice(emplacementVirgule+1,valSliderActuel.length));
       events.push({"name": "valve" + i, "type": "open", "time": tempsOuverture});
       events.push({"name": "valve" + i, "type": "close", "time": tempsFermeture});

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

function getData(){
  axios.get('/sequence', {
    params: {
      num_valves: 10
    }
  })
  .then(function (response) {
    console.log("Séquence reçue avec succès");
    readSequence(JSON.parse(response.request.response));
  })
  .catch(function (error) {
    console.log("Erreur de récupération de la séquence");
  })

}

function readSequence(sequence){
  resetSliders();

  var listEvent = sequence["sequence"];

  for (var i = 0; i < listEvent.length; i++) {
    var valeursOpen = listEvent[i];
    var valeursClose = listEvent[i+1];

    distOpen = calculDistDepuisTps(valeursOpen["time"]);
    console.log(distOpen);
    distClose = calculDistDepuisTps(valeursClose["time"]);
    console.log(distClose);
    var newSlide = document.createElement('input');

    var numeroSlider = valeursOpen["name"].slice(valeursOpen["name"].indexOf('e')+1,valeursOpen["name"].length);

    newSlide.id = "slider" + numeroSlider;
    newSlide.type = "text";
    newSlide.class = "span2";
    slider_options = {
      orientation: "vertical",
      min:10,
      max:100,
      step: 0.01,
      value: [distOpen,distClose],
      min: 0.0,
      max: 2.0,
      handle: "triangle"
    }
    document.getElementById('affichageSliders').appendChild(newSlide);

    sliders.push(new Slider("#slider" + numeroSlider, slider_options));

    var br = document.createElement('br');

    newSlide.appendChild(br);

    i++;
  }
}

function calculDistDepuisTps(tps){
  return (((tps*tps)*9.81)/2);
}
