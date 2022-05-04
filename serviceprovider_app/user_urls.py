from django.urls import path


from serviceprovider_app.user_views import IndexView, ViewProduct, AddCartview, ViewCart, RemoveCart, indexview, \
    CheckoutView, Checkout, BuyNow, buynow, ViewOrders, ShopView, AddFeedback

urlpatterns = [
    path('', IndexView.as_view()),
    path('p', indexview.as_view()),
    path('viewproduct',ViewProduct.as_view()),
    path('addcart',AddCartview.as_view()),
    path('viewcart',ViewCart.as_view()),
    path('rejectcart',RemoveCart.as_view()),
    path('checkout',CheckoutView.as_view()),
    path('checkout1',Checkout.as_view()),
    path('buynow',BuyNow.as_view()),
    path('buynow1',buynow.as_view()),
    path('vieworder',ViewOrders.as_view()),
    path('shopview',ShopView.as_view()),
    path('feedback',AddFeedback.as_view()),



]


def urls():
    return urlpatterns, 'user', 'user'