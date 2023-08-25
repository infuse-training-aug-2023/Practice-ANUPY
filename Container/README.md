## Exercise 01

FROM python:3

COPY . /app

WORKDIR /app


RUN pip install numpy

CMD python main.py hello

## Exercise 02

FROM ruby:3.0

COPY . /app

WORKDIR /app

RUN gem install json

CMD ruby main.rb "1234=>test" "content.json"

## Exercise 03

FROM ruby:3.0

COPY . /app

WORKDIR /app

RUN 

CMD ruby test.rb

## Exercise 04

FROM node:20

COPY /app /app

WORKDIR /app

RUN npm i 

CMD node app.js

## Exercise 05

FROM node:20

COPY /app /app

WORKDIR /app

RUN npm i 

EXPOSE 1000

ENV PORT=1000

CMD node main.js

## Exercise 06

### Docker Compose
services:
  backend:
    build: /app/backend
    ports:
      - 3001:3001
    environment:
      - PORT=3001
  frontend:
    build: /app/frontend
    ports:
      - 3000:3000

### Backend Docker
FROM node:20

COPY . /app

WORKDIR /app

RUN npm i 

EXPOSE 3001

ENV PORT=3001

CMD node main.js

### Frontend Docker
FROM node:20

COPY . /app

WORKDIR /app/client

RUN npm i 

EXPOSE 3000

CMD npm start