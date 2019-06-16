FROM python:3.7.3

LABEL MAINTAINER="Daniel Garcia <dani.garcia.perez@gmail.com>"

WORKDIR /var/www/

ENV PYTHON_PACKAGES="\
  numpy \
  matplotlib \
  scipy \
  scikit-learn \
  pandas \
  nltk \
  lxml \
  pytrends \
  pytest-mock \
  Flask \
  requests \
  requests_mock \
  oauth2client \
  firebase-admin \
  pymongo \
  mongomock \
"


ENV PACKAGES="\
  python-dev \
  build-essential \
  libblas-dev \
  liblapack-dev \
  libatlas-base-dev \
  gfortran \
  dumb-init \
  musl \
  bash \
  git \
  ca-certificates \
  libstdc++ \
  tcl \
  tk \
  libssl1.0 \
  make \
  python3-dev \
  libxml2-dev \
  libxslt-dev \
  musl-dev \
"

RUN apt-get update  \
    && apt-get -y install $PACKAGES

RUN python3 -m pip install $PYTHON_PACKAGES \
    && pip3 install --upgrade pip setuptools


CMD ["python3"]
