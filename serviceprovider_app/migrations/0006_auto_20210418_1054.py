# Generated by Django 3.2 on 2021-04-18 05:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('serviceprovider_app', '0005_category_product'),
    ]

    operations = [
        migrations.AddField(
            model_name='category',
            name='status',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AddField(
            model_name='product',
            name='status',
            field=models.CharField(max_length=100, null=True),
        ),
    ]
