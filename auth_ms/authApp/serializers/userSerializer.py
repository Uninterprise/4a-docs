from rest_framework import serializers
from authApp.models.user import User


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id_usuario', 'nombre_usuario', 'apellido_usuario', 'direccion_usuario', 'ciudad_usuario', 'tipo_pago_usuario', 'id_reserva_usuario']
        