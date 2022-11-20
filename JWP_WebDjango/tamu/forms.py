from django import forms

class FormTamu(forms.Form):
    nim = forms.CharField(max_length = 10)
    nama = forms.CharField(max_length =250)
    kegiatan = forms.CharField(widget=forms.Textarea)