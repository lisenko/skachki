from django.shortcuts import render
from django.db import models

from .models import owner, horse, jockey, battle, result

def battleslist(request):
    context = {
        'title': 'Состязания',
        'battles': battle.objects.all().order_by('-startdate'),
    }
    return render(request, 'race/battles.html', context)

def resultslist(request, battle_id):
    context = {
        'title': 'Результаты',
        'battle': battle.objects.get(id=battle_id),
        'results': result.objects.filter(battle=battle_id).order_by('time'),
    }
    return render(request, 'race/results.html', context)

def ownerslist(request):
    context = {
        'title': 'Владельцы',
        'owners': owner.objects.all().order_by('name'),
    }
    return render(request, 'race/owners.html', context)

def horseslist(request):
    context = {
        'title': 'Лошади',
        'horses': horse.objects.all().order_by('name'),
    }
    return render(request, 'race/horses.html', context)

def ratingslist(request):
    context = {
        'title': 'Рейтинг',
        'jockeys': jockey.objects.all().order_by('-rating'),
    }
    return render(request, 'race/rating.html', context)

def horsedetails(request, horse_id):
    context = {
        'title': 'Лошадь',
        'horse': horse.objects.get(id=horse_id),
        'results_places': zip(result.objects.filter(horse=horse_id).order_by('-battle__startdate'), 
        [result.objects.filter(time__lt=r.time, battle=r.battle).count()+1 
        for r in result.objects.filter(horse=horse_id).order_by('-battle__startdate')]),
    }
    return render(request, 'race/horsedetails.html', context)

def jockeydetails(request, jockey_id):
    context = {
        'title': 'Жокей',
        'jockey': jockey.objects.get(id=jockey_id),
        'results_places': zip(result.objects.filter(jockey=jockey_id).order_by('-battle__startdate'), 
        [result.objects.filter(time__lt=r.time, battle=r.battle).count()+1 
        for r in result.objects.filter(jockey=jockey_id).order_by('-battle__startdate')]),
    }
    return render(request, 'race/jockeydetails.html', context)