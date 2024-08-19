from django import forms
from .models import User, TipoBodega, Bodega

class UserRegisterForm(forms.ModelForm):
    password = forms.CharField(widget=forms.PasswordInput)
    password_confirm = forms.CharField(widget=forms.PasswordInput, label='Confirmar contraseña')

    class Meta:
        model = User
        fields = ['username', 'email', 'password', 'name']

    def clean(self):
        cleaned_data = super().clean()
        password = cleaned_data.get('password')
        password_confirm = cleaned_data.get('password_confirm')

        if password != password_confirm:
            raise forms.ValidationError("Las contraseñas no coinciden")

    def save(self, commit=True):
        user = super().save(commit=False)
        user.set_password(self.cleaned_data['password'])  # Encripta la contraseña
        if commit:
            user.save()
        return user
    
class CotizacionForm(forms.Form):
    tipo_bodega = forms.ModelChoiceField(queryset=TipoBodega.objects.all(), empty_label="Selecciona un tipo de bodega")

    def get_bodegas_disponibles(self):
        tipo = self.cleaned_data.get('tipo_bodega')
        if tipo:
            return Bodega.objects.filter(tipo=tipo, disponible=True)
        return Bodega.objects.none()
