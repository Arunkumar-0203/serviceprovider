# Generated by Django 3.2 on 2021-04-19 21:49

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('serviceprovider_app', '0018_remove_product_shop'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='shop',
            field=models.ForeignKey(default=6, on_delete=django.db.models.deletion.CASCADE, to='serviceprovider_app.shopreg'),
        ),
    ]