FROM python:3.7-alpine

COPY . /app
WORKDIR /app

RUN pip install pipenv

RUN pipenv install --deploy

CMD pipenv run python hello-world.py