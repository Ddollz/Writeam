# Generated by Django 3.2.6 on 2021-09-16 01:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0004_accounts_is_email_verified'),
    ]

    operations = [
        migrations.AlterField(
            model_name='accounts',
            name='is_active',
            field=models.BooleanField(default=False),
        ),
    ]
