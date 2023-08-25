FROM ruby:3.0

COPY . /app

WORKDIR /app

RUN gem install json

CMD ruby main.rb "1234=>test" "content.json"