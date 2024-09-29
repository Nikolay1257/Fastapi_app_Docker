#!/bin/bash

docker compose up -d

sleep 2

docker exec fastapi_app bash -c "cd / && cd /fastapi_app && alembic upgrade head"
