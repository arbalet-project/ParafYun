# Create your views here.
from django.http import HttpResponse
from django.shortcuts import render

def defaultView_index(request):
    return HttpResponse("""<h1>oui</h1>""")
