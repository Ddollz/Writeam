# Generated by Django 3.2.7 on 2021-09-25 12:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0005_manpower_currentcandidate'),
    ]

    operations = [
        migrations.AddField(
            model_name='manpower',
            name='is_Finished',
            field=models.BooleanField(default=False),
        ),
    ]
