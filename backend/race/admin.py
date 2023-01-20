from django.contrib import admin
from .models import owner, horse, jockey, battle, result

admin.site.register(owner)
admin.site.register(horse)
admin.site.register(jockey)
admin.site.register(battle)
admin.site.register(result)