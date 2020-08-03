FROM python:3.7

LABEL maintainer="keguigong@gmail.com"

ENV PYTHONUNBUFFERED 1

WORKDIR /app
# alpine linux
# RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
#   && apk update \
#   && apk add --virtual build-deps gcc python3-dev musl-dev \
#   && apk add --no-cache mariadb-dev \
#   && pip install --upgrade pip setuptools \
#   && apk del build-deps

COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY . /app