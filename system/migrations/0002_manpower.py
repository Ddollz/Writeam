# Generated by Django 3.2.7 on 2021-09-24 12:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='manpower',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255, verbose_name='Requester Name')),
                ('department', models.CharField(choices=[('Copy Writer', 'Copy Writer'), ('Translator', 'Translator'), ('Editor', 'Editor'), ('None', 'None')], default='None', max_length=255, verbose_name='Department')),
                ('requestDate', models.DateTimeField(blank=True, null=True)),
                ('expectedDate', models.DateTimeField(blank=True, null=True)),
                ('reason', models.TextField(max_length=255, verbose_name='Reason')),
                ('designation', models.CharField(choices=[('Copy Writer', 'Copy Writer'), ('Translator', 'Translator'), ('Editor', 'Editor'), ('None', 'None')], default='None', max_length=255, verbose_name='Designation')),
                ('nosCandidate', models.PositiveIntegerField(blank=True, default=0, null=True, verbose_name='nos of Candidate')),
                ('requirements', models.TextField(max_length=255, verbose_name='Skill')),
            ],
            options={
                'verbose_name': 'Manpower Request',
            },
        ),
    ]
