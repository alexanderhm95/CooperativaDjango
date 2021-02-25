from django.shortcuts import render, HttpResponse, redirect
from django.contrib.auth.decorators import login_required
from apps.modelo.models import Cliente, Cuenta, Transaccion
from .forms import FormularioCliente, FormularioCuenta, FormularioTransaccion
from django.contrib.auth.models import User, Group
from django.db.models import Q
from django.contrib.auth.decorators import login_required
from django.template.loader import get_template,render_to_string

import io
from django.template.loader import get_template,render_to_string
from django.http import FileResponse

@login_required
def index(request):
    usuario = request.user
    if usuario.has_perm('modelo.add_cliente'):
        print('tienen el permiso')
        listaClientes= Cliente.objects.all()
        busqueda = request.POST.get("busqueda")
        if busqueda:
            listaClientes = Cliente.objects.filter(
                Q(nombres__icontains = busqueda) | 
                Q(apellidos__icontains = busqueda) | 
                Q(cedula = busqueda)
            ).distinct()

        return render(request,'clientes/index.html', locals())
    else:
        return render(request,'login/alerta.html', locals())
       

@login_required
def crearCliente(request):
    formulario_cliente = FormularioCliente(request.POST)
    formulario_cuenta = FormularioCuenta(request.POST)
    if request.method == 'POST':
        if formulario_cliente.is_valid() and formulario_cuenta.is_valid():
            cliente = Cliente()
            datos_cliente = formulario_cliente.cleaned_data
            cliente.cedula = datos_cliente.get('cedula')
            cliente.nombres = datos_cliente.get('nombres')
            cliente.apellidos = datos_cliente.get('apellidos')
            cliente.genero = datos_cliente.get('genero')
            cliente.estadoCivil = datos_cliente.get('estadoCivil')
            cliente.correo = datos_cliente.get('correo')
            cliente.telefono = datos_cliente.get('telefono')
            cliente.celular = datos_cliente.get('celular')
            cliente.direccion = datos_cliente.get('direccion')
            #ORM
            cliente.save()
            # ORM
            cuenta = Cuenta()
            datos_cuenta = formulario_cuenta.cleaned_data
            cuenta.numero = datos_cuenta.get("numero")
            cuenta.saldo = datos_cuenta.get("saldo")
            cuenta.tipoCuenta = datos_cuenta.get("tipoCuenta")
            cuenta.cliente = cliente
            #ORM
            cuenta.save()

            user = User.objects.create_user(cliente.cedula, cliente.correo, cliente.cedula)
            user.first_name = cliente.nombres
            user.last_name = cliente.apellidos
            grupo = Group.objects.get(name="gestion_clientes")
            print(grupo)
            user.groups.add(grupo)
            user.save()

            return redirect(index)
    return render(request, 'clientes/crearClientes.html', locals())


@login_required
def modificarCliente(request, cedula):
    cliente = Cliente.objects.get(cedula=cedula)
    if request.method == 'GET':
        formulario_cliente_editar = FormularioCliente(instance=cliente)
    else:
        formulario_cliente_editar = FormularioCliente(
            request.POST, instance=cliente)
        if formulario_cliente_editar.is_valid():
            formulario_cliente_editar.save()
        return redirect(index)
    return render(request, 'clientes/modificar.html', locals())


@login_required
def eliminar(request):
    usuario=request.user
    if usuario.groups.filter(name='gestion_clientes').exists():
        dni= request.GET['cedula']
        cliente= Cliente.objects.get(cedula=dni)
        cliente.delete()
        return redirect(index)
    else:
        return render(request, ('login/alerta.html'))



#==================Cuentas===================

@login_required
def listarCuentas(request, cedula):
    cliente = Cliente.objects.get(cedula = cedula)
    cuentas = Cuenta.objects.filter(cliente = cliente)
    return render(request, 'cuentas/index.html', locals())

@login_required
def crearCuenta(request, cedula):
    formulario_cuenta = FormularioCuenta(request.POST)
    cliente = Cliente.objects.get(cedula = cedula)
    if request.method == 'POST':
        if formulario_cuenta.is_valid():
            cuenta = Cuenta()
            datos_cuenta = formulario_cuenta.cleaned_data
            cuenta.numero = datos_cuenta.get("numero")
            cuenta.saldo = datos_cuenta.get("saldo")
            cuenta.tipoCuenta = datos_cuenta.get("tipoCuenta")
            cuenta.cliente = cliente
            cuenta.save()
            return redirect(index)
    return render(request, 'cuentas/crearCuentas.html', locals())

@login_required
def modificarCuenta(request, numero):
    cuenta = Cuenta.objects.get(numero=numero)
    if request.method=='GET':
        formulario_cuenta_editar= FormularioCuenta(instance=cuenta)
    else:
        formulario_cuenta_editar=FormularioCuenta(request.POST, instance=cuenta)
        if formulario_cuenta_editar.is_valid():
            formulario_cuenta_editar.save()
        return redirect(index)


    return render(request, 'cuentas/modificarCuenta.html', locals())



@login_required
def baja(request):
    usuario=request.user
    if usuario.groups.filter(name='gestion_clientes').exists():
        num= request.GET['numero']
        cuenta= Cuenta.objects.get(numero=num)
        cuenta.estado=False
        cuenta.save()
        return redirect(index)
    else:
        return render(request, ('login/alerta.html'))


