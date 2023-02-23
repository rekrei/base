FROM ruby:2.4.10

MAINTAINER Matthew Vincent <matthew@rekrei.org>

RUN apt-get update && apt-get -y install imagemagick libmagickcore-dev libmagickwand-dev libpq-dev nodejs shared-mime-info
RUN rm -rf /var/lib/apt/lists/*
RUN mkdir -p /rekrei
RUN gem install bundler -v 1.16.0 
