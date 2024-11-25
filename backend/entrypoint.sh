#!/bin/sh

python manage.py makemigrations
python manage.py migrate --no-input
python manage.py collectstatic --no-input

gunicorn kittygram_backend.wsgi:application --bind 0.0.0.0:9000