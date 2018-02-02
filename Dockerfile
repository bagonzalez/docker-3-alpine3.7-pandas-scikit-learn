FROM python:3-alpine3.7

LABEL maintainer="Bruno Gonzalez <bagonzalez.sv@gmail.com>"

RUN apk update && \
    apk upgrade && \
    apk add --no-cache libpq libstdc++ lapack-dev && \
    apk add --no-cache --virtual=build_deps python3-dev g++ gfortran postgresql-dev  && \
    pip install --no-cache-dir virtualenv && \
    virtualenv venv && \
    pip install --no-cache-dir pandas numpy scipy scikit-learn && \
    apk del build_deps

