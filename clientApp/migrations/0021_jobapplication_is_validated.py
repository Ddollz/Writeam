# Generated by Django 3.2.6 on 2021-09-20 04:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clientApp', '0020_auto_20210918_1213'),
    ]

    operations = [
        migrations.AddField(
            model_name='jobapplication',
            name='is_validated',
            field=models.BooleanField(default=False),
        ),
    ]