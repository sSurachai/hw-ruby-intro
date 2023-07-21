FROM ruby:2.6.6
WORKDIR /usr/src/app
COPY ./ ./
RUN gem install bundler
RUN bundle install
ENTRYPOINT [ "rspec" ]