EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
CMD ["rspec", "spec/system/hello_world_spec.rb"]
RUN rails test