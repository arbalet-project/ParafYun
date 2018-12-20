# Create your views here.
from django.http import HttpResponse
from django.shortcuts import render
from django.http import JsonResponse
from django.middleware.csrf import get_token
from django.template import RequestContext


def defaultView_index(request):
    #csfr_token = get_token(request)
    #if not request.session.session_key:
    #    request.session.create()
    #return JsonResponse({'token': csfr_token, 'sessionid' : request.session.session_key})
    return render(request, 'index.html')

def sequence(request):
    raise Exception("1111111")
    if request.method == "GET":

        response_data = {}
        return JsonResponse(response_data)
    elif request.method == "POST":
        print (1)
        raise Exception("1111111")
        response_data={"oui"}
        return RequestContext(request,JsonResponse(response_data))
    else:
        print (2)
        raise Exception("22222")
        return HttpResponse(status=200)
