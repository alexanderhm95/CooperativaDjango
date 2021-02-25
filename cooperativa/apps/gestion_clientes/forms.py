from django import forms
from apps.modelo.models import Cliente, Cuenta, Transaccion


class FormularioCliente(forms.ModelForm):
    class Meta:
        model = Cliente
        fields = ["cedula", "apellidos", "nombres",
                  "genero", "estadoCivil", "correo", "telefono","celular","direccion"]

class FormularioCuenta(forms.ModelForm):

    class Meta:
        model = Cuenta
        fields = ["numero", "tipoCuenta", "saldo"]

class FormularioTransaccion(forms.ModelForm):
    class Meta:
        model=Transaccion
        fields=["valor", "descripcion"]