var sliders = [];

var nbSliders;

function affichageSliders() {
  nbSliders = document.getElementById('nbSliders').value;
  endroitOuAfficher = document.getElementById('affichageSliders');
  sliders = [];

  for (var i = 0; i < nbSliders; i++) {
    var newSlide = document.createElement('input');

    newSlide.id = "slider" + i;
    newSlide.type = "text";
    newSlide.class = "span2";
    newSlide.value = "0";
    newSlide['data-slider-min'] = "10";
    newSlide['data-slider-max'] = "100";
    newSlide['data-slider-step'] = "5";
    newSlide['data-slider-value'] = "[250,450]";

    endroitOuAfficher.appendChild(newSlide);

    sliders.push(new Slider("#slider" + i, {orientation : 'vertical'}));

    var br = document.createElement('br');

    newSlide.appendChild(br);

  }
}

function resetSliders(){

}


function enregistrer(){
  var dicoContenu = [];
  var stringBase = "#slider";

  for(var i = 0; i < nbSliders; i++){
    dicoContenu += {"nom" : stringBase + i, "type" : "open", "time" : 0.5};
  }

  var sequence = {"Sequence" : dicoContenu};

  return sequence;
}
