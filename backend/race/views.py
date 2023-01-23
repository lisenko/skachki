from django.shortcuts import render
from django.template import loader
from django.http import HttpResponse

from .models import owner, horse, jockey, battle, result

def battleslist(request):
    context = {
        'battles': battle.objects.all().order_by('-startdate'),
    }
    return render(request, 'race/battles.html', context)

def resultslist(request, battle_id):
    context = {
        'battle': battle.objects.get(id=battle_id),
        'results': result.objects.filter(battle=battle_id).order_by('place'),
    }
    return render(request, 'race/results.html', context)

def ownerslist(request):
    context = {
        'owners': owner.objects.all().order_by('name'),
    }
    return render(request, 'race/owners.html', context)

def horseslist(request):
    context = {
        'horses': horse.objects.all().order_by('name'),
    }
    return render(request, 'race/horses.html', context)

def ratingslist(request):
    context = {
        'jockeys': jockey.objects.all().order_by('-rating'),
    }
    return render(request, 'race/rating.html', context)