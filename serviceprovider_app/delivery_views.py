from django.contrib.auth.models import User
from django.shortcuts import redirect
from django.views.generic import TemplateView, View
# from rest_framework.authtoken.admin import User

from serviceprovider_app.models import ShopReg, UserBuy, DeliveryBoy, Cart


class IndexView(TemplateView):
    template_name = 'deliveryboy/delivery_index.html'

class indexview(TemplateView):
    template_name = 'deliveryboy/delivery_index.html'

class ShopView(TemplateView):
    template_name = 'deliveryboy/view_shops.html'
    def get_context_data(self, **kwargs):
        context = super(ShopView,self).get_context_data(**kwargs)
        sh = ShopReg.objects.filter(user__last_name='1',user__is_staff='0',user__is_active='1')
        context['Shop'] = sh

        return context

class ViewOrders(TemplateView):
    template_name = 'deliveryboy/view_order.html'
    def get_context_data(self, **kwargs):
        context = super(ViewOrders,self).get_context_data(**kwargs)
        f = UserBuy.objects.filter(status='paid',delivery='null')
        context['F']=f
        return context

class OrderTaked(View):
     def dispatch(self,request,*args,**kwargs):
        dl = DeliveryBoy.objects.get(user_id=self.request.user.id)
        id = request.GET['id']
        userid = request.GET['userid']
        user = UserBuy.objects.filter(id=id,USER_id=userid,status='paid',delivery='null')

        for i in user:
            i.delivery = 'Order Taked'
            i.Dl=dl
            i.save()
            ct = Cart.objects.filter(Product_id=i.prodt,USERR_id=userid,payment='paid',status='cart',delivery='null')
            for j in ct:
                j.delivery='deliverd'
                j.save()
        return redirect(request.META['HTTP_REFERER'])
