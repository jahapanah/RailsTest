FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir -p /myapp
COPY ./test-interview-question-master /myapp/
WORKDIR /myapp
RUN rspec spec/system/hello_world_spec.rb exit 0