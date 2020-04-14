FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir -p /myapp
COPY ./test-interview-question-master /myapp/
WORKDIR /myapp
COPY ./test-interview-question-master/Gemfile /myapp/Gemfile
COPY ./test-interview-question-master/Gemfile.lock /myapp/Gemfile.loc
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]