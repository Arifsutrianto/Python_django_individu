from django.contrib import admin

# Register your models here.
from . models import Post, Kategori

class ViewsPost(admin.ModelAdmin):
    list_display = ('judul', 'sinopsis','kategori')
    list_display_links = ()
    search_fields = ('judul','kategori')

admin.site.register(Post, ViewsPost)

admin.site.register(Kategori)