from django import forms

class PlayerSearchForm(forms.Form):
    playerId = forms.CharField(label='Player ID Number', max_length=100)