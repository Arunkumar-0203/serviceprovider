"""serviceprovider URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.conf.urls.static import static

from django.urls import path

from serviceprovider import settings
from serviceprovider_app import admin_urls,user_urls,shop_urls,delivery_urls
from serviceprovider_app.views import IndexView, Registrations, SopRegistration, Login, index, DeliveryReg

urlpatterns = [
    path('',IndexView.as_view()),
    path('h',index.as_view()),
    path('reg',Registrations.as_view()),
    path('register',SopRegistration.as_view()),
    path('deli',DeliveryReg.as_view()),
    path('login',Login.as_view()),
    path('admin/',admin_urls.urls()),
    path('user/',user_urls.urls()),
    path('shop/',shop_urls.urls()),
    path('delivery/',delivery_urls.urls())




]
if settings.DEBUG:
    urlpatterns+=static(settings.STATIC_URL,document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

