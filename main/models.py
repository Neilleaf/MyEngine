from django.db import models

class User(models.Model):
    email = models.EmailField(unique=True)
    username = models.CharField(max_length=20, default= "annonymous")
    password = models.CharField(max_length=200)
    first_name = models.TextField(max_length=20)
    last_name = models.TextField(max_length=20)
    phone_no = models.CharField(unique=True, max_length=13)
    DOB = models.DateField()


    def __str__(self):
        return f"{self.first_name} {self.last_name} ({self.email})"
    
class gameinfo(models.Model):
    title = models.CharField(unique=True, max_length=100)
    release_date = models.DateField()
    description = models.TextField()
    video_url = models.URLField()
    genre = models.CharField(max_length=1000)
    image = models.ImageField(upload_to='images/')
    topurch = models.URLField()
    walk= models.URLField()
    sys_req= models.TextField()
    developer= models.TextField(default="unknown")
    publisher= models.TextField(default="unknown")
    summary = models.TextField(default="unknown")


    def __str__(self):
        return self.title


