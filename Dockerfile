FROM python:3.7-alpine
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev vim jpeg-dev zlib-dev tzdata
ENV TZ America/Sao_Paulo
LABEL maintainer="Meu Projeto"

ENV PYTHONUNBUFFERED 1
ENV PIP_DEFAULT_TIMEOUT 100

#COPY ./requirements.txt /requirements.txt

RUN pip install --upgrade pip

RUN mkdir /src
WORKDIR /src
COPY ./src /src

RUN pip install -r requirements.txt
CMD python manage.py makemigrations
CMD python manage.py migrate
CMD python manage.py jsonfiles_data/db.json
