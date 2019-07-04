FROM ruby:2.6

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && \
  apt-get -y install \
  curl \
  libjemalloc-dev \
  libjemalloc1 \
  build-essential \
  libxml2-dev \
  libxslt-dev \
  postgresql-server-dev-all \
  git \
  bash \
  nodejs \
  yarn

ENV LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libjemalloc.so.1