from django.contrib.auth.models import User
from django.db import models

# Create your models here.
class UserType(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    type = models.CharField(max_length=50)

class UserReg(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    dateofbirth = models.DateField(max_length=50,null=True)
    address = models.CharField(max_length=100,null=True)
    phone = models.CharField(max_length=100,null=True)
    place = models.CharField(max_length=100,null=True)

class DeliveryBoy(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    DOB = models.DateField(max_length=50,null=True)
    ADDRESS = models.CharField(max_length=100,null=True)
    PHONE = models.CharField(max_length=100,null=True)
    PLACE = models.CharField(max_length=100,null=True)


class ShopReg(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE)

    Address = models.CharField(max_length=100,null=True)
    Phone = models.CharField(max_length=100,null=True)
    Place = models.CharField(max_length=100,null=True)
    aaddress = models.CharField(max_length=100,null=True)

class category(models.Model):
    Category = models.CharField(max_length=50, null=True)
    status = models.CharField(max_length=100,null=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True)


class product(models.Model):
    pname= models.CharField(max_length=30, null=True)
    bname= models.CharField(max_length=30, null=True)
    price= models.IntegerField(null=True,default=0)
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
    img= models.ImageField('images/', null=True)
    stock=models.IntegerField(default=0)
    status = models.CharField(max_length=100,null=True)
    Cat= models.ForeignKey(category,on_delete=models.CASCADE,null=True)
    shop= models.ForeignKey(ShopReg,on_delete=models.CASCADE)




class Cart(models.Model):
    USERR = models.ForeignKey(UserReg, on_delete=models.CASCADE,null=True)
    Product = models.ForeignKey(product, on_delete=models.CASCADE, null=True)
    total = models.CharField(max_length=100,null=True)
    quantity = models.CharField(max_length=100,null=True)
    payment = models.CharField(max_length=100,null=True)
    status = models.CharField(max_length=100,null=True)
    delivery = models.CharField(max_length=100,null=True)
    # billstatus = models.CharField(max_length=100,null=True)

class UserBuy(models.Model):
    Dl = models.ForeignKey(DeliveryBoy, on_delete=models.CASCADE,null=True)
    USER = models.ForeignKey(UserReg, on_delete=models.CASCADE,null=True)
    prodt = models.ForeignKey(product, on_delete=models.CASCADE, null=True)
    status = models.CharField(max_length=100,null='True')
    delivery = models.CharField(max_length=100,null='True')

class feedback(models.Model):
    feed = models.CharField(max_length=100,null=True)
    USE = models.ForeignKey(UserReg, on_delete=models.CASCADE,null=True)
    SHOP= models.ForeignKey(ShopReg,on_delete=models.CASCADE)
