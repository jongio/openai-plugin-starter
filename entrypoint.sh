#!/bin/sh
set -e

./pluginconfig.sh

# Run your service, e.g. for python:

# exec uvicorn server.main:app --host 0.0.0.0 --port "${PORT:-${WEBSITES_PORT:-8080}}"
