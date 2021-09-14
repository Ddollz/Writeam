# Generated by Django 3.2.6 on 2021-09-06 12:53

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('clientApp', '0009_auto_20210906_2049'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='article',
            name='personaldetails',
        ),
        migrations.AddField(
            model_name='article',
            name='account',
            field=models.OneToOneField(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]