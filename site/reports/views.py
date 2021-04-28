from django.http.response import HttpResponseRedirect
from django.shortcuts import render, redirect
from django.http import HttpResponse
from .forms import PlayerSearchForm

def search(request):
    form = PlayerSearchForm()

    return render(request, template_name='reports/player-search.html', context={'form': form})

def report(request):
    if request.method == 'POST':
        form = PlayerSearchForm(request.POST)
        if form.is_valid():
            playerId = int(form.cleaned_data['playerId'])
            return HttpResponse(str(playerId))
    
    return redirect('player-search')
