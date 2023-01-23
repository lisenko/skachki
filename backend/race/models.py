from django.db import models

class owner(models.Model):
    name = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    phone = models.CharField(max_length=32)

    def __str__(self):
        return self.name

SEX_CHOICES = (
    ("male", "Муж."),
    ("female", "Жен.")
)

class horse(models.Model):
    owner = models.ForeignKey(owner, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    sex = models.CharField(max_length=10, choices=SEX_CHOICES, default="1")
    age = models.IntegerField()

    def __str__(self):
        return self.name

class jockey(models.Model):
    name = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    age = models.IntegerField()
    rating = models.IntegerField()

    def __str__(self):
        return self.name

class battle(models.Model):
    name = models.CharField(max_length=255)
    location = models.CharField(max_length=255)
    startdate = models.DateTimeField()

    def __str__(self):
        return self.name

class result(models.Model):
    battle = models.ForeignKey(battle, on_delete=models.CASCADE)
    horse = models.ForeignKey(horse, on_delete=models.CASCADE)
    jockey = models.ForeignKey(jockey, on_delete=models.CASCADE)
    time = models.DurationField()

    def __str__(self):
        return self.battle.name + ': ' + self.horse.name + ', ' + self.jockey.name + ' - ' + str(self.time)