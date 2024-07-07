#!/bin/sh
docker compose run  -p 8080:8080 backend /opt/venv/bin/python3 /app/back.py
