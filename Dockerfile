FROM python:3.6-alpine

ENV ALPINE_BASE_URL="http://dl-cdn.alpinelinux.org/alpine/edge"
ENV PACKAGES="\
 make \
 build-base \
 gcc \
 musl-dev \
 postgresql-dev \
 postgresql-client \
 python3-dev \
 libffi-dev \
 geos \
"

RUN apk upgrade --update \
 && apk add \
 --repository ${ALPINE_BASE_URL}/main \
 --repository ${ALPINE_BASE_URL}/testing \
 --repository ${ALPINE_BASE_URL}/community \
 $PACKAGES && pip install pipenv
