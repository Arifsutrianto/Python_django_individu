from django.shortcuts import render

# Create your views here.
from . models import Post
def index(request):
    posting = Post.objects.all()
    context = {'posting_views':posting}

    return render(request, 'buku/index.html', context)