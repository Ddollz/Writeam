# Generated by Django 3.2.6 on 2021-09-20 11:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clientApp', '0027_jobapplication_remarks'),
    ]

    operations = [
        migrations.AddField(
            model_name='jobapplication',
            name='progress',
            field=models.CharField(blank=True, default="Writeam Staff's are reviewing your applications", max_length=255, null=True),
        ),
    ]
