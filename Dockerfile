FROM ruby:2.5
RUN DEBIAN_FRONTEND=noninteractive apt-get update -qq && apt-get install -y nodejs && apt-get install -y libpq-dev && apt-get install -y libxml2-dev libxslt1-dev && apt-get install -y build-essential
RUN mkdir -p /myapp
WORKDIR /myapp
COPY ./test-interview-question-master /myapp
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]