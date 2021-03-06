# Generated by Django 3.2.6 on 2021-09-15 10:12

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('clientApp', '0015_article_datesubmit'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='article',
            name='dateSubmit',
        ),
        migrations.CreateModel(
            name='jobapplication',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('jobTitle', models.CharField(max_length=255, null=True)),
                ('jobDesc', models.TextField(max_length=500, null=True)),
                ('dateSubmit', models.DateTimeField(auto_now_add=True, verbose_name='Date Submit')),
                ('submitApplication', models.BooleanField(default=False)),
                ('accounts', models.OneToOneField(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Job Application',
            },
        ),
    ]
