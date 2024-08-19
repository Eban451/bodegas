from django.shortcuts import render, redirect, get_object_or_404
from .forms import UserRegisterForm, CotizacionForm
from .models import User
from django.contrib.auth.decorators import login_required
from .models import Noticia, Like, Bodega, TipoBodega

def home(request):
    noticias = Noticia.objects.all()
    # Adding a flag to check if the user has liked the news item
    for noticia in noticias:
        noticia.user_has_liked = noticia.like_set.filter(user=request.user).exists() if request.user.is_authenticated else False
    
    context = {
        'noticias': noticias,
    }
    return render(request, 'index.html', context)

def register(request):
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            user = form.save(commit=False)
            user.set_password(form.cleaned_data['password'])  # Encrypt the password
            user.save()
            return redirect('login')
    else:
        form = UserRegisterForm()

    return render(request, 'registration/register.html', {'form': form})

@login_required
def cotizar(request):
    return render(request, 'cotizar.html')

@login_required
def like_noticia(request, noticia_id):
    noticia = get_object_or_404(Noticia, id=noticia_id)
    like, created = Like.objects.get_or_create(user=request.user, noticia=noticia)
    
    if not created:
        like.delete()
    
    return redirect('index')

@login_required
def cotizar(request):
    tipos_disponibles = TipoBodega.objects.filter(bodega__disponible=True).distinct()
    bodegas_seleccionadas = request.session.get('bodegas_seleccionadas', [])

    if request.method == 'POST':
        if 'agregar_bodega' in request.POST:
            tipo_bodega_id = request.POST.get('tipo_bodega')
            tipo_bodega = TipoBodega.objects.get(id=tipo_bodega_id)
            bodega_disponible = Bodega.objects.filter(tipo_bodega=tipo_bodega, disponible=True).first()
            if bodega_disponible:
                bodegas_seleccionadas.append(bodega_disponible.id)
                request.session['bodegas_seleccionadas'] = bodegas_seleccionadas

        elif 'eliminar_bodega' in request.POST:
            bodega_id = int(request.POST.get('bodega_id'))
            if bodega_id in bodegas_seleccionadas:
                bodegas_seleccionadas.remove(bodega_id)
                request.session['bodegas_seleccionadas'] = bodegas_seleccionadas

        elif 'cotizar' in request.POST:
            return redirect('resultado_cotizacion')

    bodegas_obj = Bodega.objects.filter(id__in=bodegas_seleccionadas)

    context = {
        'tipos_disponibles': tipos_disponibles,
        'bodegas_seleccionadas': bodegas_obj
    }
    return render(request, 'cotizar.html', context)


@login_required
def resultado_cotizacion(request):
    # Recuperar las bodegas seleccionadas de la sesión
    bodegas_seleccionadas = request.session.get('bodegas_seleccionadas', [])
    bodegas_obj = Bodega.objects.filter(id__in=bodegas_seleccionadas)

    # Calcular el costo total sumando los precios de los tipos de bodega
    total = sum(bodega.tipo_bodega.precio for bodega in bodegas_obj)

    # Recuperar el tipo de bodega seleccionado
    tipo_seleccionado = bodegas_obj.first().tipo_bodega if bodegas_obj.exists() else None

    context = {
        'bodegas_seleccionadas': bodegas_obj,
        'total': total,
        'tipo_seleccionado': tipo_seleccionado
    }
    return render(request, 'resultado_cotizacion.html', context)

