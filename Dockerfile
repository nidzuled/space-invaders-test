FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /webapp
WORKDIR /webapp

#ENV RAILS_ENV production
#ENV RAILS_SERVE_STATIC_FILES true
#ENV RAILS_LOG_TO_STDOUT true


COPY Gemfile /webapp/Gemfile
COPY Gemfile.lock /webapp/Gemfile.lock

#RUN bundle config --global frozen 1
RUN bundle install

COPY . /webapp

#RUN bundle exec rake assets:precompile
#EXPOSE 3000

#CMD ["rails", "server", "-b", "0.0.0.0"]