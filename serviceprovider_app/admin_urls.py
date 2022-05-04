from django.urls import path

from serviceprovider_app.admin_views import IndexView, NewShop, NewUser, ApproveView, RejectView, ShopView, UserView, \
    NewDelivery, DeliveryView

urlpatterns = [
    path('', IndexView.as_view()),
    path('l', IndexView.as_view()),
    path('newshop',NewShop.as_view()),
    path('newuser',NewUser.as_view()),
    path('approve',ApproveView.as_view()),
    path('reject',RejectView.as_view()),
    path('shop',ShopView.as_view()),
    path('user',UserView.as_view()),
    path('newdeli',NewDelivery.as_view()),
    path('DELIVERY',DeliveryView.as_view())


]


def urls():
    return urlpatterns, 'admin', 'admin'