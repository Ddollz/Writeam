# Generated by Django 3.2.7 on 2021-10-06 02:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clientApp', '0041_deploymentmodel_bank'),
    ]

    operations = [
        migrations.AlterField(
            model_name='personaldetails',
            name='nationality',
            field=models.CharField(blank=True, max_length=200, null=True),
        ),
    ]
