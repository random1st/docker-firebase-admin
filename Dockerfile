FROM python:3.8-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apk add --no-cache --virtual .build-deps  \
    gcc musl-dev  build-base linux-headers \
    &&  pip install firebase-admin==4.3.0 \
    && apk del .build-deps \
    && rm -rf /root/.cache \
    && pip install --no-cache-dir pipenv==2018.11.26
