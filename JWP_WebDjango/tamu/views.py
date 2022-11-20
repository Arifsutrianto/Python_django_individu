from django.shortcuts import render
from . forms import FormTamu
from . models import Guest

# Create your views here.
def index(request):
    form_tamu = FormTamu()
    context = {'form_tamu': form_tamu}

    if request.method == "POST":
        Guest.objects.create(
            nim = request.POST.get('nim'),
            nama = request.POST.get('nama'),
            kegiatan = request.POST.get('kegiatan'),
            )

    return render(request, 'tamu/index.html', context)