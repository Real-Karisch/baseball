from django.http.response import HttpResponseRedirect
from django.shortcuts import render, redirect
from django.http import HttpResponse
from .forms import PlayerSearchForm
from .models import Players, Teams, Leagues

def search(request):
    form = PlayerSearchForm()

    return render(request, template_name='reports/player-search.html', context={'form': form})

def report(request):
    if request.method == 'POST':
        form = PlayerSearchForm(request.POST)
        if form.is_valid():
            playerId = int(form.cleaned_data['playerId'])
            try:
                player = Players.objects.filter(id = playerId)[0]
            except IndexError:
                return HttpResponse('Error: Invalid player ID')
            return render(request, template_name='reports/report.html', context={'player': player})
    
    return redirect('player-search')

def teamsList(request):
    # teams = Teams.objects.filter(Teams.leagueid="MLB")
    teams = Teams.objects.all()
    return render(request, template_name='lists/teams-list.html', context={'teams': teams})
