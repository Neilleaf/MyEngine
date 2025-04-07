from django.shortcuts import render, redirect, get_object_or_404
from .models import User
from .models import gameinfo
from django.contrib.auth.hashers import make_password, check_password
from django.contrib.auth import authenticate, login
from django.shortcuts import render, redirect
from django.contrib.auth.hashers import make_password
from datetime import datetime
from main.decorators import login_required
from itertools import groupby
from operator import itemgetter
from collections import defaultdict

def signupinit(request):
    print("Signup view called!")
    if request.method == 'POST':
        email = request.POST.get('floating_email')
        username = request.POST.get('Username')
        password = request.POST.get('floating_password')
        confirm_password = request.POST.get('repeat_password')
        first_name = request.POST.get('floating_first_name')
        last_name = request.POST.get('floating_last_name')
        phone_no = request.POST.get('floating_phone')
        dob = request.POST.get('date-of-birth')
        if password != confirm_password:
            return render(request, 'signup.html', {'error': 'Passwords do not match'})

        if User.objects.filter(email=email).exists():
            return render(request, 'signup.html', {'error': 'Email already exists'})
        if User.objects.filter(phone_no=phone_no).exists():
            return render(request, 'signup.html', {'error': 'Phone number already exists'})


        user = User(
            email=email,
            username=username,
            password=password,
            first_name=first_name,
            last_name=last_name,
            phone_no=phone_no,
            DOB=dob
        )
        user.save()

        return redirect('success')

    return render(request, 'signup.html')

def login(request):
    if request.method == 'POST':
        email = request.POST.get('email')
        password = request.POST.get('password')
        next_url = request.POST.get('next', '/')

        print(f"email: {email}")
        print(f"password: {password}")
        try:
            user = User.objects.get(email = email)
            print(f"password in db: {user.password}")
            if password == user.password:
                request.session['user_id'] = user.id
                request.session['username'] = user.username
                print("login successful")
                return redirect(next_url)
            else:
                print("password mismatch")
                return render(request, 'index.html', {'error': 'Invalid email OR password'})
        except User.DoesNotExist:
            print("user nnono")
            return render(request, 'index.html', {'error': 'Invalid email OR password'})
    return render(request, 'index.html')

@login_required
def indexafter(request):
    user_id = request.session.get('user_id')
    user = User.objects.get(id = user_id)
    return render(request, 'indexafter.html', {'user': user})

@login_required
def profile(request):
    user_id = request.session.get('user_id')
    user = User.objects.get(id = user_id)
    return render(request, 'profile.html', {'user': user})

@login_required
def cantfind(request):
    return render(request, 'cantfind.html')

from django.shortcuts import redirect

def logout(request):
    request.session.flush()  
    return redirect('index') 


def success(request):
    return render(request, 'success.html')
def signup(request):
    if 'user_id' in request.session:
        return redirect('indexafter')
    return render(request, 'signup.html')
def index(request):
    if 'user_id' in request.session:
        return redirect('indexafter')
    return render(request, 'index.html')

@login_required
def game_deets(request, title):
    game = get_object_or_404(gameinfo, title=title)
    return render(request, 'game_deets.html', {'game': game})

@login_required
def all_games(request):
    games = gameinfo.objects.all()
    return render(request, 'allgamesafter.html', {'games': games})

@login_required
def genre_games(request):
    games = gameinfo.objects.all()
    genre_dict = defaultdict(list)
    for game in games:
        genre = game.genre.split()
        unique_genre = set(genre.strip() for genre in genre )
        for genre in unique_genre:
            genre = genre.strip()
            genre_dict[genre].append(game)
    grouped_games = sorted(genre_dict.items())
    return render(request, 'genreafter.html', {'grouped_games': grouped_games})

@login_required
def home_games(request):
    games = gameinfo.objects.all()[:6] 
    return render(request, 'homeafter.html', {'games': games})