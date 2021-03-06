# Generated by Django 3.2.6 on 2021-09-10 09:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clientApp', '0012_auto_20210907_0745'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='article',
            options={'verbose_name': 'Article'},
        ),
        migrations.AlterModelOptions(
            name='education',
            options={'verbose_name': 'Eduction'},
        ),
        migrations.AlterModelOptions(
            name='employmenthistory',
            options={'verbose_name': 'Employment History'},
        ),
        migrations.AlterModelOptions(
            name='link',
            options={'verbose_name': 'Social Link'},
        ),
        migrations.AlterModelOptions(
            name='personaldetails',
            options={'verbose_name': 'Personal Details'},
        ),
        migrations.AlterModelOptions(
            name='reference',
            options={'verbose_name': 'Reference'},
        ),
        migrations.AlterModelOptions(
            name='skill',
            options={'verbose_name': 'Skill'},
        ),
        migrations.AlterField(
            model_name='personaldetails',
            name='fname',
            field=models.CharField(max_length=200, null=True, verbose_name='First Name'),
        ),
        migrations.AlterField(
            model_name='personaldetails',
            name='lname',
            field=models.CharField(max_length=200, null=True, verbose_name='Last Name'),
        ),
    ]
