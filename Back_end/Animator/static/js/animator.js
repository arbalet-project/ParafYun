var sliders = [];

var nbSliders;

function affichageSliders() {
  nbSliders = document.getElementById('nbSliders').value;
  endroitOuAfficher = document.getElementById('affichageSliders');


  for (var i = 0; i < nbSliders; i++) {
    var newSlide = document.createElement('input');

    newSlide.id = 'slider' + i;
    newSlide.type = 'text';
    newSlide.class = 'span2';
    newSlide.min = 10;
    newSlide.max = 1000;
    newSlide.value = [250,450];

    endroitOuAfficher.appendChild(newSlide);

  //  var codeHtml = " data-slider-step=\"5\" data-slider-value=\"[250,450]\"/>";

    alert(i);

  //  $( "affichageSliders" ).prepend( codeHtml );

    // sliders.push(new Slider("#slider" + i, {}));
  }
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
