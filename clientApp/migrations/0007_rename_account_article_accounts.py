# Generated by Django 3.2.6 on 2021-09-06 12:33

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('clientApp', '0006_auto_20210906_2002'),
    ]

    operations = [
        migrations.RenameField(
            model_name='article',
            old_name='account',
            new_name='accounts',
        ),
    ]