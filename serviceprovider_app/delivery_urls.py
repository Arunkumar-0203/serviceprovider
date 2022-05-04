from django.urls import path

from serviceprovider_app.delivery_views import IndexView, indexview, ShopView, ViewOrders, OrderTaked

urlpatterns = [
    path('', IndexView.as_view()),
    path('k', indexview.as_view()),
    path('view__shop',ShopView.as_view()),
    path('view_order',ViewOrders.as_view()),
    path('order_taked',OrderTaked.as_view())

]


def urls():
    return urlpatterns, 'deliveyboy', 'deliveyboy'