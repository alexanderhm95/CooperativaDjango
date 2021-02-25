from django.db import models

class Cliente(models.Model):
    listaGenero =(
        ('femenino','Femenino'),
        ('masculino','Masculino')
    )

    listaEstadoCivil = (
        ('soltero','Soltero'),
        ('casado','Casado'),
        ('divorciado','Divorciado'),
        ('viudo','Viudo'),
        ('separado','Separado'),
    )
    cliente_id = models.AutoField(primary_key = True )
    cedula = models.CharField(max_length = 10, unique = True, null=False,blank=True)
    nombres = models.CharField(max_length = 70, null=False,blank=True)
    apellidos = models.CharField(max_length = 70,blank=True)
    genero = models.CharField(max_length=20,choices = listaGenero, default = "femenino",blank=True)
    estadoCivil = models.CharField(max_length=20,choices = listaEstadoCivil, null=False,blank=True)
    correo= models.CharField(max_length = 105,blank=True)
    telefono = models.CharField(max_length = 15,blank=True)
    celular = models.CharField(max_length = 15,blank=True)
    direccion = models.CharField(max_length = 200,blank=True)
    date_created =models.DateTimeField(auto_now_add = True)

    def __str__(self):
        return self.cedula

class Cuenta(models.Model):
    listaTipoCuenta =(
        ('ahorros','Ahorros'),
        ('corriente','Corriente'),
        ('programado','Programado'),
    )
    cuenta_id = models.AutoField(primary_key = True)
    numero = models.CharField(max_length=20,unique=True, null=False,blank=True)
    fechaApartura = models.DateTimeField(auto_now=True , null=False,blank=True)
    tipoCuenta = models.CharField(max_length=20,choices=listaTipoCuenta, default = 'ahorros',blank=True)
    saldo = models.DecimalField(max_digits=10, decimal_places=2,null=False,blank=True)
    estado = models.BooleanField(default=True,blank=True)
    cliente = models.ForeignKey(Cliente, on_delete= models.CASCADE)
    date_created =models.DateTimeField(auto_now_add = True)
    def __str__(self):
        cadena = str(self.saldo)+";"+ str(self.cuenta_id)
        return cadena

class Transaccion(models.Model):
    listaTipoTransaccion=(
        ('deposito','Deposito'),
        ('retiro','Retiro')
    )
    transaccion_id= models.AutoField(primary_key = True)
    fecha = models.DateTimeField(auto_now=True)
    tipo= models.CharField(max_length=20,choices = listaTipoTransaccion, default ='deposito')
    valor=models.DecimalField(max_digits=10,decimal_places=2,null=False)
    cuenta = models.ForeignKey(Cuenta,on_delete=models.CASCADE)
    descripcion=models.TextField(default="descripcion")
    updated_at = models.DateTimeField(auto_now=True)
