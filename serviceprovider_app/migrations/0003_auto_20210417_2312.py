# Generated by Django 3.2 on 2021-04-17 17:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('serviceprovider_app', '0002_auto_20210417_2311'),
    ]

    operations = [
        migrations.AlterField(
            model_name='shopreg',
            name='phone',
            field=models.CharField(max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='userreg',
            name='phone',
            field=models.CharField(max_length=100, null=True),
        ),
    ]
