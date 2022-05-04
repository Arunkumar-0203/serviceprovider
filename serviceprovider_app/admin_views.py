from django.contrib.auth.models import User
from django.shortcuts import render
from django.views.generic import TemplateView

from serviceprovider_app.models import ShopReg, UserReg, DeliveryBoy


class IndexView(TemplateView):
    template_name = 'admin/admin_index.html'

class indexview(TemplateView):
    template_name = 'admin/admin_index.html'

class NewShop(TemplateView):
    template_name = 'admin/new_shop.html'
    def get_context_data(self, **kwargs):
        context = super(NewShop,self).get_context_data(**kwargs)
        shop = ShopReg.objects.filter(user__last_name='0',user__is_staff='0')
        context['Shop'] = shop

        return context

class NewUser(TemplateView):
    template_name = 'admin/new_user.html'
    def get_context_data(self, **kwargs):
        context = super(NewUser,self).get_context_data(**kwargs)
        user = UserReg.objects.filter(user__last_name='0',user__is_staff='0')
        context['User'] = user

        return context

class NewDelivery(TemplateView):
    template_name = 'admin/new_delivery.html'
    def get_context_data(self, **kwargs):
        context = super(NewDelivery,self).get_context_data(**kwargs)
        deli = DeliveryBoy.objects.filter(user__last_name='0',user__is_staff='0')
        context['Deli'] = deli

        return context

class ApproveView(TemplateView):
    def dispatch(self,request,*args,**kwargs):
        id=request.GET['id']
        user=User.objects.get(id=id)
        user.last_name='1'
        user.save()
        return render(request,'admin/admin_index.html',{'message':" Account Approved"})



class RejectView(TemplateView):
    def dispatch(self,request,*args,**kwargs):
        id=request.GET['id']
        user=User.objects.get(id=id)
        user.last_name='1'
        user.is_active='0'
        user.save()
        return render(request,'admin/admin_index.html',{'message':"Account Removed"})

class ShopView(TemplateView):
    template_name = 'admin/shop.html'
    def get_context_data(self, **kwargs):
        context = super(ShopView,self).get_context_data(**kwargs)
        sh = ShopReg.objects.filter(user__last_name='1',user__is_staff='0',user__is_active='1')
        context['Shop'] = sh

        return context

class UserView(TemplateView):
    template_name = 'admin/users.html'
    def get_context_data(self, **kwargs):
        context = super(UserView,self).get_context_data(**kwargs)
        user = UserReg.objects.filter(user__last_name='1',user__is_staff='0',user__is_active='1')
        context['User'] = user

        return context

class DeliveryView(TemplateView):
    template_name = 'admin/delivery.html'
    def get_context_data(self, **kwargs):
        context = super(DeliveryView,self).get_context_data(**kwargs)
        DL = DeliveryBoy.objects.filter(user__last_name='1',user__is_staff='0',user__is_active='1')
        context['dl'] = DL

        return context

