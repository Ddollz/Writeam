# Generated by Django 3.2.7 on 2021-10-01 14:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clientApp', '0040_deploymentmodel_accounts'),
    ]

    operations = [
        migrations.AddField(
            model_name='deploymentmodel',
            name='bank',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
    ]