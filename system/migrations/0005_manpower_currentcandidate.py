# Generated by Django 3.2.6 on 2021-09-25 12:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0004_remove_manpower_expecteddate'),
    ]

    operations = [
        migrations.AddField(
            model_name='manpower',
            name='currentCandidate',
            field=models.PositiveIntegerField(blank=True, default=0, null=True, verbose_name='Accepted of Candidate'),
        ),
    ]
