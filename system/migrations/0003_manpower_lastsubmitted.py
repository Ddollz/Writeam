# Generated by Django 3.2.7 on 2021-09-24 14:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0002_manpower'),
    ]

    operations = [
        migrations.AddField(
            model_name='manpower',
            name='lastSubmitted',
            field=models.DateTimeField(auto_now_add=True, null=True),
        ),
    ]