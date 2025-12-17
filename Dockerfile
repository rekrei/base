FROM ruby:3.2-slim-bullseye

LABEL maintainer="Matthew Vincent <matthew@rekrei.org>"

RUN apt-get update && apt-get -y install --no-install-recommends \
	imagemagick \
	libmagickcore-dev \
	libmagickwand-dev \
	libpq-dev \
	nodejs \
	shared-mime-info \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /rekrei
RUN gem install bundler -v 4.0.2
