from django.urls import path
from . import views

urlpatterns = [
    path('', views.defaultView_index, name='defaultView_index'),
    path('sequence', views.sequence, name='sequence'),
]
