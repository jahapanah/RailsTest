FROM ruby:2.5
RUN DEBIAN_FRONTEND=noninteractive apt-get update -qq && apt-get install -y nodejs postgresql-client && apt-get install -y libpq-dev && apt-get install -y libxml2-dev libxslt1-dev && apt-get install -y build-essential
RUN gem install bundler