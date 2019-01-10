# Create your views here.
from django.http import HttpResponse
from django.shortcuts import render
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
import json
import os.path

def defaultView_index(request):
    #csfr_token = get_token(request)
    #if not request.session.session_key:
    #    request.session.create()
    #return JsonResponse({'token': csfr_token, 'sessionid' : request.session.session_key})
    return render(request, 'index.html')

@csrf_exempt
def sequence(request):
    if request.method == "GET":
        # La réponse doit être formatée ainsi :
        if(os.path.exists("sequence.json")): #Si il existe déjà un fichier
            with open ("sequence.json") as F :
                response_data = json.load (F)
            return JsonResponse(response_data)
        else : #S'il en existe pas, on genère un dictionnaire par défaut
            list_valves=[]
            num_valves= int(request.GET.get("num_valves",12))
            for j in range (num_valves):
                list_valves.append ({"name": "valve" + str (j), "type": "open","time":0.5})
                list_valves.append ({"name": "valve" + str (j), "type": "close","time" :1.5})
            response_data ={"sequence" : list_valves}
            with open ("sequence.json","w") as P:
                json.dump (response_data,P)
            return JsonResponse(response_data)
    elif request.method == "POST":
        # Récupérer l'animation provenant de la requête au format JSON
        Raw_data= json.loads(request.body.decode ("utf-8"))
        # puis enregistrer dans le fichier
        with open ("sequence.json","w") as P:
            json.dump (Raw_data,P)
        return HttpResponse(status=200)
    else:
        return HttpResponse(status=405)
