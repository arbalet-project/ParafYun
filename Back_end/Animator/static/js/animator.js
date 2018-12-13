var sliders = [];


function affichageSliders() {
  var nbSliders = document.getElementById('#nbSliders').value;
  var insererAvant = document.getElementById('#insertBefore').value;

  for (var i = 0; i < nbSliders; i++) {
    var codeHtml = "<input id=\"slider" + i + " type=\"text\" class=\"span2\" value=\"\" data-slider-min=\"10\" data-slider-max=\"1000\" data-slider-step=\"5\" data-slider-value=\"[250,450]\"/>";

    insererAvant.insertBefore(codeHtml);

    sliders.push(new Slider("slider" + i));


  }
}


function enregistrer(){
  var dicoContenu;

  var stringBase = "slider";
  for(var i = 0; i < nbSliders; i++){
    dicoContenu += {"nom" : alert(window[stringBase + i]), "type" : "open", "time" : 0.5};
  }

  var sequence = {"Sequence" : [dicoContenu]};

  return sequence;
}
