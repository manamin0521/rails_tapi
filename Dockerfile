FROM ruby:2.5

ENV LANG C.UTF-8
ENV WORKSPACE=/usr/local/src

# install bundler.
RUN apt-get update && \
    apt-get install -y \
            vim \
            less \
            build-essential \
            libpq-dev nodejs \
            && \
            apt-get clean \
            && \
            rm -rf /var/lib/apt/lists/*

RUN gem install bundler

# create user and group.
RUN groupadd -r --gid 1000 rails && \
    useradd -m -r --uid 1000 --gid 1000 rails

# create directory.
RUN mkdir -p $WORKSPACE $BUNDLE_APP_CONFIG && \
    chown -R rails:rails $WORKSPACE && \
    chown -R rails:rails $BUNDLE_APP_CONFIG

USER rails
WORKDIR $WORKSPACE

# install ruby on rails.
ADD --chown=rails:rails src $WORKSPACE
RUN bundle install
