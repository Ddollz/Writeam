# Generated by Django 3.2.6 on 2021-09-18 04:13

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clientApp', '0019_alter_jobapplication_datesubmit'),
    ]

    operations = [
        migrations.AddField(
            model_name='jobapplication',
            name='copywriter',
            field=models.PositiveIntegerField(blank=True, default=0, null=True, validators=[django.core.validators.MaxValueValidator(100)], verbose_name='Copywriter Score'),
        ),
        migrations.AddField(
            model_name='jobapplication',
            name='editor',
            field=models.PositiveIntegerField(blank=True, default=0, null=True, validators=[django.core.validators.MaxValueValidator(100)], verbose_name='Editor Score'),
        ),
        migrations.AddField(
            model_name='jobapplication',
            name='translator',
            field=models.PositiveIntegerField(blank=True, default=0, null=True, validators=[django.core.validators.MaxValueValidator(100)], verbose_name='Translator Score'),
        ),
    ]
