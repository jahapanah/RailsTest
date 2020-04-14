FROM ruby:2.5
RUN DEBIAN_FRONTEND=noninteractive apt-get update -qq && apt-get install -y nodejs postgresql-client && apt-get install -y libpq-dev && apt-get install -y libxml2-dev libxslt1-dev && apt-get install -y build-essential
RUN gem install bundler
RUN mkdir -p /myapp
WORKDIR /myapp
COPY ./test-interview-question-master/Gemfile /myapp/Gemfile
COPY ./test-interview-question-master/Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY ./test-interview-question-master /myapp
RUN rails test
RUN rspec spec/system/hello_world_spec.rb