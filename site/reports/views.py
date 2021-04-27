from django.shortcuts import render
from django.http import HttpResponse

def home(request):
    return HttpResponse('Homepage for reports working')

def report(request):
    return HttpResponse('Page for serving reports')
