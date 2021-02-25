from django.contrib import admin
from django.urls import path, include
from . import views
urlpatterns = [
    path('admin/', admin.site.urls),
    path('clientes/', include('apps.gestion_clientes.urls')),
    path('login/', include('apps.login.urls')),
    path('transacciones/', include('apps.transacciones.urls'), name='transacciones'),
    path('', views.homePage, name='home_page'),
]