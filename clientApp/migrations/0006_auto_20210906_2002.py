# Generated by Django 3.2.6 on 2021-09-06 12:02

import clientApp.models
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('clientApp', '0005_article_headline'),
    ]

    operations = [
        migrations.AlterField(
            model_name='article',
            name='account',
            field=models.OneToOneField(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AlterField(
            model_name='article',
            name='article',
            field=models.FileField(blank=True, max_length=255, null=True, upload_to=clientApp.models.get_profile_article_filepath),
        ),
    ]
