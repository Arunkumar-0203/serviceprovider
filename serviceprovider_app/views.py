from django.contrib.auth import login
from django.contrib.auth.models import User,auth
from django.shortcuts import render, redirect
# Create your views here.
from django.views.generic import TemplateView

from serviceprovider_app.models import UserReg, UserType, ShopReg, DeliveryBoy


class IndexView(TemplateView):
    template_name = 'index.html'

class index(TemplateView):
    template_name = 'index.html'

class Registrations(TemplateView):
    template_name = 'register.html'
    def post(self,request,*args,**kwargs):
        fullname = request.POST['Name']
        emai = request.POST['Email']
        passw = request.POST['password']
        usname = request.POST['username']
        DOB = request.POST['dob']
        Addr = request.POST['address']
        Place = request.POST['place']
        phn = request.POST['mobile']
        print(passw)

        try:
            user = User.objects.create_user(username=usname,password=passw,first_name=fullname,email=emai,last_name=0)
            user.save()
            usreg = UserReg()
            usreg.user = user
            usreg.address=Addr
            usreg.dateofbirth = DOB
            usreg.place = Place
            usreg.phone = phn
            usreg.save()
            usertype = UserType()
            usertype.user = user
            usertype.type = "user"
            usertype.save()
            return redirect('reg')
        except:
             messages = "Enter Another Username"
             return render(request,'register.html',{'messages':messages})

class DeliveryReg(TemplateView):
    template_name = 'deliveryregistration.html'
    def post(self,request,*args,**kwargs):
        fullname = request.POST['Name']
        emai = request.POST['Email']
        passw = request.POST['password']
        usname = request.POST['username']
        dob = request.POST['Dob']
        Addr = request.POST['address']
        Place = request.POST['place']
        phn = request.POST['mobile']

        try:
            user = User.objects.create_user(username=usname,password=passw,first_name=fullname,email=emai,last_name=0)
            user.save()
            usreg = DeliveryBoy()
            usreg.user = user
            usreg.ADDRESS=Addr
            usreg.DOB = dob
            usreg.PLACE = Place
            usreg.PHONE = phn
            usreg.save()
            usertype = UserType()
            usertype.user = user
            usertype.type = "delivery"
            usertype.save()
            return redirect('deli')
        except:
             messages = "Enter Another Username"
             return render(request,'deliveryregistration.html',{'messages':messages})

class SopRegistration(TemplateView):
    template_name = 'shopregister.html'
    def post(self,request,*args,**kwargs):
        fullname = request.POST['Firstname']
        emai = request.POST['Email']
        password = request.POST['Password']
        usname = request.POST['Username']
        adinfo = request.POST['aditionalInfo']
        Addr = request.POST['Address']
        Place = request.POST['Location']
        phn = request.POST['mobile']

        try:
            user = User.objects.create_user(username=usname,password=password,first_name=fullname,email=emai,last_name=0)
            user.save()
            shreg = ShopReg()
            shreg.user = user
            shreg.Address = Addr
            shreg.aaddress = adinfo
            shreg.Place = Place
            shreg.Phone = phn
            shreg.save()
            usertype = UserType()
            usertype.user = user
            usertype.type = "shop"
            usertype.save()
            return redirect('register')
        except:
             messages = "Enter Another Username"
             return render(request,'shopregister.html',{'messages':messages})

class Login(TemplateView):
    template_name = 'login.html'
    def post(self, request, *args, **kwargs):
        username = request.POST['NAME']
        password= request.POST['PASSWORD']
        user = auth.authenticate(username=username,password=password)

        if user is not None:
            login(request,user)
            if user.last_name == '1':
                if user.is_superuser:
                    return redirect('/admin')
                elif UserType.objects.get(user_id=user.id).type == "user":
                    return redirect('/user')
                elif UserType.objects.get(user_id=user.id).type == "shop":
                    return redirect('/shop')
                elif UserType.objects.get(user_id=user.id).type == "delivery":
                    return redirect('/delivery')

            else:
                return render(request,'login.html',{'message':" User Account Not Authenticated"})
        else:
            return render(request,'login.html',{'message':"Invalid Username or Password"})

