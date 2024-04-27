# build stage
FROM python:3.11 as build

RUN apt update && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/code/project

WORKDIR /usr/code/project

COPY src src
COPY requirements requirements
COPY setup.py setup.py

RUN pip install -e .
