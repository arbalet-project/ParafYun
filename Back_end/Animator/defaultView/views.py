# Create your views here.
from django.http import HttpResponse
from django.shortcuts import render
from django.http import JsonResponse
#from django.middleware.csrf import get_token


def defaultView_index(request):
    #csfr_token = get_token(request)
    #if not request.session.session_key:
    #    request.session.create()
    #return JsonResponse({'token': csfr_token, 'sessionid' : request.session.session_key})
    return render(request, 'index.html')

def sequence(request):
    if request.method == "GET":
        response_data = {}
        return JsonResponse(response_data)
    else:
        return HttpResponse(status=200)
