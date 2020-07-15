FROM python:3.8-alpine


RUN apk add --no-cache  \
    gcc musl-dev  build-base linux-headers 


ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


RUN pip install firebase-admin==4.3.0

RUN apk del gcc build-base linux-headers
