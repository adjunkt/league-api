FROM ruby:2.4.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /league_api
WORKDIR /league_api
ADD . /league_api

RUN bundle install
