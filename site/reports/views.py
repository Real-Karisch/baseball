from django.http.response import HttpResponseRedirect
from django.shortcuts import render, redirect
from django.http import HttpResponse
from .forms import PlayerSearchForm

from .models import Players, Teams, Pitches, Atbats, Seasons, Leagues
from .datamgmt import queryset2dict


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
                atbatsQS = Atbats.objects.filter(batter__id = playerId)
                pitchesQS = Pitches.objects.filter(atbat__batter__id = playerId) 
                firstAB = atbatsQS[0]
                if firstAB.istopinning != 'top':
                    teamName = Atbats.objects.filter(batter__id=playerId)[0].game.hometeam.name
                else:
                    teamName = Atbats.objects.filter(batter__id=playerId)[0].game.awayteam.name
                atbatsDict = queryset2dict(atbatsQS, ['rbi'])
                rbiTotal = sum(atbatsDict['rbi'])
            except IndexError:
                return HttpResponse('Error: Invalid player ID')
            return render(request, template_name='reports/report.html', context={'player': player, 'rbiTotal': rbiTotal, 'team': teamName})
    
    return redirect('player-search')

def teamsList(request):
    # teams = Teams.objects.filter(Teams.leagueid="MLB")
    teams = Teams.objects.all()
    return render(request, template_name='lists/teams-list.html', context={'teams': teams})
