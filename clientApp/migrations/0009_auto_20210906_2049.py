# Generated by Django 3.2.6 on 2021-09-06 12:49

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('clientApp', '0008_rename_accounts_article_account'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='article',
            name='account',
        ),
        migrations.AddField(
            model_name='article',
            name='personaldetails',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='clientApp.personaldetails'),
        ),
    ]