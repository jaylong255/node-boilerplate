# Set host user and group id for all stages
ARG HOST_USER_UID=1001
ARG HOST_USER_GID=1001

# Vue.js SPA to Consume the API
FROM node:lts-alpine as app

ARG HOST_USER_UID
ARG HOST_USER_GID

# Add the user that will be expected
RUN addgroup --gid ${HOST_USER_GID} app
RUN adduser --system --no-create-home --uid $HOST_USER_UID --ingroup app webuser

WORKDIR /app
COPY --chown=webuser:app . /app/
