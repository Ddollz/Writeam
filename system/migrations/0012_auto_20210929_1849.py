# Generated by Django 3.2.7 on 2021-09-29 10:49

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0011_auto_20210929_1844'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='manpower',
            name='department',
        ),
        migrations.AlterField(
            model_name='manpower',
            name='job_Title',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='system.joblist', verbose_name='Department'),
        ),
    ]
