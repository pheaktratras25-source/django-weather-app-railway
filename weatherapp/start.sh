#!/bin/bash
cd weatherapp
python manage.py migrate
python manage.py collectstatic --noinput
gunicorn weatherapp.wsgi
