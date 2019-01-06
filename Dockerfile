FROM ruby:2.3.3

MAINTAINER <jacques.schmitz@compasso.com.br>

RUN apt-get update -qq \
  && apt-get install -y apt-transport-https \
    # Needed for certain gems
    build-essential \
    # Needed for postgres gem
    libpq-dev \
    # Needed for asset compilation
    nodejs \
  #   # The following are used to trim down the size of the image by removing unneeded data
  # && apt-get clean autoclean \
  # && apt-get autoremove -y \
  # && rm -rf \
  #   /var/lib/apt \
  #   /var/lib/dpkg \
  #   /var/lib/cache \
  #   /var/lib/log

# Create a directory for our application
# and set it as the working directory
RUN mkdir potato
WORKDIR /potato

# ADD Gemfile /potato

ADD . /potato
RUN bundle install


# CMD bundle exec rails s