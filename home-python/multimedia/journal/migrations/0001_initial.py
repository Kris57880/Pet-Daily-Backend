# Generated by Django 5.0 on 2023-12-09 14:35

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('username', models.CharField(max_length=36, primary_key=True, serialize=False)),
                ('password', models.CharField(max_length=60)),
            ],
        ),
    ]
