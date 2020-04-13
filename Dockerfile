FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir -p /myapp
RUN git clone -b master https://af90af02ca1c099c3b5c73987f5d343e6115ec1c:x-oauth-basic@github.com/jahapanah/RailsTest.git
WORKDIR /myapp
RUN rspec spec/system/hello_world_spec.rb exit 0