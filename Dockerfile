FROM ruby:2.5.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /ocean
WORKDIR /ocean
COPY Gemfile /ocean/Gemfile
COPY Gemfile.lock /ocean/Gemfile.lock
RUN bundle install
COPY . /ocean
