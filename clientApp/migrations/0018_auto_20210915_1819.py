# Generated by Django 3.2.6 on 2021-09-15 10:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clientApp', '0017_alter_jobapplication_jobtitle'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='jobapplication',
            name='jobDesc',
        ),
        migrations.RemoveField(
            model_name='jobapplication',
            name='jobTitle',
        ),
        migrations.AddField(
            model_name='jobapplication',
            name='is_copywriter',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='jobapplication',
            name='is_editor',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='jobapplication',
            name='is_translator',
            field=models.BooleanField(default=False),
        ),
    ]
