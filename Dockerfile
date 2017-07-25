FROM ruby:2.4.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /league
WORKDIR /league
ADD . /league

RUN bundle install
