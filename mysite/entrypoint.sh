#!/bin/bash
cd /opt
python manage.py  makemigrations
python manage.py  migrate
