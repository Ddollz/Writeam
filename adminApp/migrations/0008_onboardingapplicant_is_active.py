# Generated by Django 3.2.6 on 2021-09-14 16:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('adminApp', '0007_alter_onboardingapplicant_status'),
    ]

    operations = [
        migrations.AddField(
            model_name='onboardingapplicant',
            name='is_active',
            field=models.BooleanField(default=False),
        ),
    ]
