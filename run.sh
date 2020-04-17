#!/bin/bash

CURRENT_PATH=$(PWD)

# Start docker-compose
docker-compose up

# # show the status of `app`
# docker-compose logs \
#     --follow \
#     --timestamps \
#     app
