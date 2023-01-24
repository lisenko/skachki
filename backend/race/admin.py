from django.contrib import admin
from .models import owner, horse, jockey, battle, result

@admin.register(owner)
class ownerAdmin(admin.ModelAdmin):
    list_display = ('name', 'address', 'phone')
    search_fields = ('name', 'address', 'phone')
@admin.register(horse)
class horseAdmin(admin.ModelAdmin):
    list_display = ('name', 'owner', 'sex', 'age')
    search_fields = ('name', 'owner')
    list_filter = ('sex',)
@admin.register(jockey)
class jockeyAdmin(admin.ModelAdmin):
    list_display = ('name', 'address', 'age', 'rating')
    search_fields = ('name', 'address')
@admin.register(battle)
class battleAdmin(admin.ModelAdmin):
    list_display = ('name', 'location', 'startdate')
    search_fields = ('name', 'location')
    list_filter = ('location',)
@admin.register(result)
class resultAdmin(admin.ModelAdmin):
    list_display = ('battle', 'horse', 'jockey', 'time')
    search_fields = ('battle', 'horse', 'jockey')
    list_filter = ('battle', 'horse', 'jockey',)