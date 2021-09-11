# Generated by Django 3.2.6 on 2021-09-10 09:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('adminApp', '0003_auto_20210910_1752'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='onboardingapplicant',
            options={'verbose_name': 'Onboarding Applicant'},
        ),
        migrations.AlterField(
            model_name='onboardingapplicant',
            name='status',
            field=models.CharField(blank=True, choices=[('Copy Writer', 'Copy Writer'), ('Translator', 'Translator'), ('Editor', 'Editor')], default='Copy Writer', max_length=30, null=True),
        ),
    ]
