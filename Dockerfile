FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir -p /myapp
WORKDIR /myapp
COPY ./test-interview-question-master /myapp
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]