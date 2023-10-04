from django.db import models

# Create your models here.
class RegisterModel(models.Model):
    firstname=models.CharField(max_length=300)
    lastname=models.CharField(max_length=200)
    userid=models.CharField(max_length=200)
    password=models.IntegerField()
    mblenum=models.BigIntegerField()
    email=models.EmailField(max_length=400)
    gender=models.CharField(max_length=200)


class Two_ProductModel(models.Model):
    usid=models.ForeignKey(RegisterModel)
    pro_name=models.CharField(max_length=200)

class Three_ProductModel(models.Model):
    usids=models.ForeignKey(RegisterModel)
    pro_names=models.CharField(max_length=200)

class Four_ProductModel(models.Model):
    usidse=models.ForeignKey(RegisterModel)
    pro_namees=models.CharField(max_length=200)

class FeedbackModel(models.Model):
    usernames = models.ForeignKey(RegisterModel)
    feedback = models.CharField(max_length=300)
