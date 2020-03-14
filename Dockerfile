FROM python:3.7-alpine

RUN pip install pipenv

WORKDIR /app
COPY . /app

RUN pipenv install --deploy

CMD pipenv run python hello_world.py