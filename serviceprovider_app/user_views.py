from django.contrib.auth.models import User
from django.shortcuts import redirect, render
from django.views.generic import TemplateView, View

from serviceprovider_app.models import product, Cart, UserBuy, ShopReg, feedback,UserReg


class IndexView(TemplateView):
    template_name = 'user/user_index.html'

class indexview(TemplateView):
    template_name = 'user/user_index.html'

class ViewProduct(TemplateView):
    template_name = 'user/view_product.html'

    def get_context_data(self, **kwargs):
        context = super(ViewProduct,self).get_context_data(**kwargs)
        Product = product.objects.filter(status='null')
        context['pro'] = Product

        return context

class AddCartview(TemplateView):
    template_name = 'user/add_cart.html'
    def get_context_data(self, **kwargs):
        context = super(AddCartview,self).get_context_data(**kwargs)
        id = self.request.GET['id']
        Pro = product.objects.get(status='null',id=id)
        context['prd'] = Pro
        return context
    def post(self,request,*args,**kwargs):
        user = UserReg.objects.get(user_id=self.request.user.id)
        pid = request.POST['id']
        pr = product.objects.get(status='null',id=pid)
        pric = request.POST['prc']
        qnt = request.POST['quantity']
        Total= int(qnt)*int(pric)
        pr.stock = int(pr.stock)-int(qnt)
        pr.save()
        cart = Cart()
        cart.Product_id = pid
        cart.total= Total
        cart.USERR = user
        cart.quantity = qnt
        cart.payment = 'null'
        cart.status = 'cart'
        cart.delivery='null'
        cart.save()
        return render(request,'user/user_index.html',{'message':'add to cart Successfully'})
        # return redirect(request.META['HTTP_REFERER'])


class ViewCart(TemplateView):
    template_name = 'user/view_cartitem.html'
    def get_context_data(self, **kwargs):
        context = super(ViewCart, self).get_context_data(**kwargs)
        user = UserReg.objects.get(user_id=self.request.user.id)
        crt = Cart.objects.filter(USERR_id=user.id,status='cart',payment='null')
        context['CRT']=crt
        return context

class RemoveCart(TemplateView):
    def dispatch(self, request, *args, **kwargs):
        cid = request.GET['id']
        print(cid)
        c = Cart.objects.get(id=cid)
        c.status = 'remove'
        c.save()
        return redirect(request.META['HTTP_REFERER'])

class CheckoutView(TemplateView):
    template_name = 'user/checkoutpayment.html'
    def get_context_data(self, **kwargs):
        context = super(CheckoutView, self).get_context_data(**kwargs)
        id = self.request.GET['id']
        cr = product.objects.get(id=id,status='null')

        context['CR']=cr
        return context

class Checkout(TemplateView):
    template_name = 'user/checkout1.html'
    def get_context_data(self, **kwargs):
        context = super(Checkout, self).get_context_data(**kwargs)

        cr = Cart.objects.filter(status='cart',payment='null',delivery='null')
        print(cr)
        Tot=0
        for i in cr:
            Tot = Tot +int(i.total)
        print(Tot)
        context['TL']=Tot
        return context

class BuyNow(View):
    def dispatch(self,request,*args,**kwargs):
        user = UserReg.objects.get(user_id=self.request.user.id)
        id = request.GET['id']
        print(id)
        prod = product.objects.get(id=id,status='null')
        print(prod)
        p = UserBuy()
        p.prodt = prod
        p.status = "paid"
        p.delivery = "null"

        p.USER =user
        p.save()
        prod.stock=int(prod.stock)-1
        print(prod.stock)
        prod.save()

        return render(request,'user/user_index.html',{'message':'Paid Successfully'})

class buynow(View):
    def dispatch(self, request, *args, **kwargs):
        user = UserReg.objects.get(user_id=self.request.user.id)
        ct = Cart.objects.filter(USERR_id=user.id,delivery='null')
        print(user)

        for i in ct:
            u = UserBuy()
            i.payment = 'paid'
            i.delivery = 'null'
            u.prodt_id=i.Product_id
            u.delivery='null'
            u.status = 'paid'
            u.USER = user
            i.save()
            u.save()
        return render(request,'user/user_index.html',{'message':'Paid Successfully'})

class ViewOrders(TemplateView):
    template_name = 'user/view_orders.html'
    def get_context_data(self, **kwargs):
        context = super(ViewOrders, self).get_context_data(**kwargs)
        user = UserReg.objects.get(user_id=self.request.user.id)
        order = UserBuy.objects.filter(USER_id=user.id)
        context['Order']= order
        return context

class ShopView(TemplateView):
    template_name = 'user/view_shoplist.html'
    def get_context_data(self, **kwargs):
       context = super(ShopView,self).get_context_data(**kwargs)
       sh = ShopReg.objects.filter(user__last_name='1',user__is_staff='0',user__is_active='1')
       context['Shop'] = sh

       return context


class AddFeedback(TemplateView):
      template_name = 'user/add_feedback.html'
      def get_context_data(self, **kwargs):
       context = super(AddFeedback,self).get_context_data(**kwargs)
       id= self.request.GET['id']

       s = ShopReg.objects.get(user_id=id,user__last_name='1',user__is_staff='0',user__is_active='1')

       context['S']=s
       return context
      def post(self,request,*args,**kwargs):
          user = UserReg.objects.get(user_id=self.request.user.id)
          Feedback = request.POST['message']
          s_id = request.POST['sh_id']
          F = feedback()
          F.feed = Feedback
          F.SHOP_id = s_id
          F.USE_id = user.id
          F.save()
          return render(request,'user/user_index.html',{'message':'Feedback Add Successfully'})














