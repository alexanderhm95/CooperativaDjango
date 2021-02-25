from django.urls import path
from . import views

urlpatterns = [
    
    path('',views.index, name="clientes"),
    path('crearClientes', views.crearCliente, name="crearClientes"),
    path('modificar/<int:cedula>/', views.modificarCliente, name="modificar"),
    path('eliminar/', views.eliminar),
    #Urls Cuentas
    path('cuentas/<int:cedula>/', views.listarCuentas, name="cuentas"),
    path('crearCuenta/<int:cedula>/', views.crearCuenta, name="crearCuentas"),
    path('modificarCuenta/<int:numero>/', views.modificarCuenta, name="modificarCuenta"),
    path('baja/', views.baja),

]
