# Generated by Django 3.2 on 2021-04-18 18:15

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('serviceprovider_app', '0011_cart_shop'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='cart',
            name='shop',
        ),
    ]
