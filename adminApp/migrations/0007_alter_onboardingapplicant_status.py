# Generated by Django 3.2.6 on 2021-09-13 16:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('adminApp', '0006_auto_20210910_1815'),
    ]

    operations = [
        migrations.AlterField(
            model_name='onboardingapplicant',
            name='status',
            field=models.CharField(blank=True, choices=[('NONE', 'NONE'), ('FAILED', 'FAILED'), ('PASSED', 'PASSED')], default='NONE', max_length=30, null=True),
        ),
    ]
