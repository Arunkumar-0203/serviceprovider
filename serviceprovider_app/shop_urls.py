from django.urls import path

from serviceprovider_app.shop_views import IndexView, indexview, AddcategView, RejectcateView, AddproductView, \
    ProductView, ProrejectView, UpdateView, ViewOrders, ViewDelivery, ViewFeedback, ViewDeliveryboys

urlpatterns = [
    path('', IndexView.as_view()),
    path('j', indexview.as_view()),
    path('addcategory',AddcategView.as_view()),
    path('reject',RejectcateView.as_view()),
    path('products',AddproductView.as_view()),
    path('viewpro',ProductView.as_view()),
    path('prorejects',ProrejectView.as_view()),
    path('update',UpdateView.as_view()),
    path('ordesr',ViewOrders.as_view()),
    path('deliverystatus',ViewDelivery.as_view()),
    path('feedback',ViewFeedback.as_view()),
    path('deliveryboys',ViewDeliveryboys.as_view())


]


def urls():
    return urlpatterns, 'shop', 'shop'