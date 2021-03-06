# Generated by Django 3.2 on 2021-04-18 05:21

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('serviceprovider_app', '0004_auto_20210417_2313'),
    ]

    operations = [
        migrations.CreateModel(
            name='category',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Category', models.CharField(max_length=50, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='product',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('pname', models.CharField(max_length=30, null=True)),
                ('bname', models.CharField(max_length=30, null=True)),
                ('price', models.IntegerField(default=0, null=True)),
                ('img', models.ImageField(null=True, upload_to='', verbose_name='images/')),
                ('stock', models.IntegerField(default=0)),
                ('Cat', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='serviceprovider_app.category')),
            ],
        ),
    ]
