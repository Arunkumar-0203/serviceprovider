from django.contrib.auth.models import User
from django.core.files.storage import FileSystemStorage
from django.shortcuts import render, redirect
from django.views.generic import TemplateView, View
from serviceprovider_app.models import category, product,ShopReg, feedback, UserBuy, DeliveryBoy


class IndexView(TemplateView):
    template_name = 'shop/shop_index.html'

class indexview(TemplateView):
    template_name = 'shop/shop_index.html'

class AddcategView(TemplateView):
    template_name = 'shop/add_category.html'
    def get_context_data(self, **kwargs):
        context = super(AddcategView,self).get_context_data(**kwargs)
        Cteg = category.objects.filter(status='null')
        context['cteg'] = Cteg

        return context
    def post(self,request,*args,**kwargs):

        user = User.objects.get(id=self.request.user.id)
        c = request.POST['CATEGORY']
        catg = category()
        catg.Category = c
        catg.status = 'null'
        catg.user = user
        catg.save()
        return redirect(request.META['HTTP_REFERER'])

class RejectcateView(TemplateView):
    def dispatch(self,request,*args,**kwargs):
        id=request.GET['id']
        cate=category.objects.get(id=id)
        cate.status= 'removed'
        cate.save()
        return redirect(request.META['HTTP_REFERER'])

class AddproductView(TemplateView):
    template_name = 'shop/add_products.html'
    def get_context_data(self, **kwargs):
        context = super(AddproductView,self).get_context_data(**kwargs)
        Cate = category.objects.filter(status='null')
        context['cate'] = Cate
        return context
    def post(self,request,*args,**kwargs):
        user=User.objects.get(id=self.request.user.id)
        productname = request.POST['pname']
        brandname = request.POST['bname']
        categ = request.POST['cate']
        Price = request.POST['price']
        Stock = request.POST['stock']
        Images= request.FILES['image']
        shopp = ShopReg.objects.get(user_id=self.request.user.id)
        files = FileSystemStorage()
        ffil = files.save(Images.name,Images)
        pr = product()
        pr.pname = productname
        pr.bname = brandname
        pr.price = Price
        pr.img = ffil
        pr.stock = Stock
        pr.status = 'null'
        pr.user = user
        pr.Cat_id = categ
        pr.shop = shopp
        pr.save()
        return redirect(request.META['HTTP_REFERER'])

class ProductView(TemplateView):
    template_name = 'shop/product_view.html'
    def get_context_data(self, **kwargs):
        context = super(ProductView,self).get_context_data(**kwargs)
        Product = product.objects.filter(status='null')
        context['pro'] = Product
        print(Product)
        return context


class ProrejectView(TemplateView):
    def dispatch(self,request,*args,**kwargs):
        pid = request.GET['id']
        pro = product.objects.get(id=pid)
        pro.status = 'remove'
        pro.save()
        return redirect(request.META['HTTP_REFERER'])

class UpdateView(TemplateView):
    template_name = 'shop/update_product.html'
    def get_context_data(self,**kwargs):


        context =super(UpdateView,self).get_context_data(**kwargs)
        id = self.request.GET['id']
        pr = product.objects.get(id=id)
        context['PR']= pr
        return context
    def post(self,request,*args,**kwargs):
        pr_id = request.POST['id']
        prod = product.objects.get(user_id=self.request.user.id,id=pr_id)
        prod.pname = request.POST['Pname']
        prod.bname = request.POST['Bname']
        prod.price = request.POST['Price']
        prod.stock = request.POST['Sto']
        prod.save()
        return redirect(request.META['HTTP_REFERER'])

class ViewOrders(TemplateView):
    template_name = 'shop/view_orders.html'
    def get_context_data(self, **kwargs):
        context = super(ViewOrders,self).get_context_data(**kwargs)
        f = UserBuy.objects.filter(status='paid',delivery='null')
        context['F']=f
        return context

class ViewDelivery(TemplateView):
    template_name = 'shop/view_deliverystatus.html'
    def get_context_data(self, **kwargs):
        context = super(ViewDelivery,self).get_context_data(**kwargs)
        d = UserBuy.objects.filter(status='paid',delivery='Order Taked')
        context['D']= d
        return context


class ViewFeedback(TemplateView):
    template_name = 'shop/view_feedback.html'
    def get_context_data(self, **kwargs):
        context = super(ViewFeedback,self).get_context_data(**kwargs)
        sh = ShopReg.objects.get(user_id=self.request.user.id)
        f = feedback.objects.get(SHOP_id=sh)
        print(f)
        context['fe']=f
        return context

class ViewDeliveryboys(TemplateView):
    template_name = 'shop/delivery.html'
    def get_context_data(self, **kwargs):
        context = super(ViewDeliveryboys,self).get_context_data(**kwargs)
        DL = DeliveryBoy.objects.filter(user__last_name='1',user__is_staff='0',user__is_active='1')
        context['dl'] = DL

        return context