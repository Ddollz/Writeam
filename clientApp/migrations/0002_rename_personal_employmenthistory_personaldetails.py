# Generated by Django 3.2.6 on 2021-09-05 07:31

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('clientApp', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='employmenthistory',
            old_name='personal',
            new_name='personaldetails',
        ),
    ]
