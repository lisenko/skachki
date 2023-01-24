from django.urls import path

from . import views

urlpatterns = [
    path('', views.battleslist, name='battles'),
    path('battle/<int:battle_id>/', views.resultslist, name='battle'),
    path('owners/', views.ownerslist, name='owners'),
    path('horses/', views.horseslist, name='horses'),
    path('rating/', views.ratingslist, name='rating'),
    path('horse/<int:horse_id>/', views.horsedetails, name='horse'),
    path('jockey/<int:jockey_id>/', views.jockeydetails, name='jockey'),
]