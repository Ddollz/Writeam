# Generated by Django 3.2.6 on 2021-09-06 23:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clientApp', '0011_rename_account_article_accounts'),
    ]

    operations = [
        migrations.AlterField(
            model_name='personaldetails',
            name='email',
            field=models.CharField(max_length=200, null=True),
        ),
        migrations.AlterField(
            model_name='reference',
            name='email',
            field=models.CharField(max_length=200, null=True),
        ),
    ]