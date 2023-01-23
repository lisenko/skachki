from django.shortcuts import render
from django.template import loader
from django.http import HttpResponse

from .models import owner, horse, jockey, battle, result

def index(request):
    context = {
        'battles': battle.objects.all().order_by('-startdate'),
    }
    return render(request, 'race/battles.html', context)