# Create your views here.
from django.http import HttpResponse
from django.shortcuts import render
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt

def defaultView_index(request):
    #csfr_token = get_token(request)
    #if not request.session.session_key:
    #    request.session.create()
    #return JsonResponse({'token': csfr_token, 'sessionid' : request.session.session_key})
    return render(request, 'index.html')

@csrf_exempt
def sequence(request):
    if request.method == "GET":
        response_data = {"pi": 3.1415}
        # La réponse doit être formatée ainsi :
        # {"sequence" : [{"name": "valve1", "type": "open", time: 0.0}, {"name": "valve2", "type" : "open", time: 0.5} etc...]}
        return JsonResponse(response_data)
    elif request.method == "POST":
        # Récupérer l'animation provenant de la requête au format JSON
        # puis la substituer à celle enregistrée de la base de données 
        return HttpResponse(status=200)
    else:
        return HttpResponse(status=405)


