#!/bin/bash
cd /home/ubuntu/.virtualenvs/wonder
source bin/activate
cd /home/ubuntu/simple_django_app
#exec gunicorn simple_django_app.wsgi:application \
exec gunicorn_django \
    -b 0.0.0.0:8000 \
    -w 3 \
    -k "sync" \
    --log-file "gunicorn.log"

