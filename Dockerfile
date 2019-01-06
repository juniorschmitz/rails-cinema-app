FROM ruby:2.3.3

MAINTAINER <jacques.schmitz@compasso.com.br>

RUN apt-get update -qq \
  && apt-get install -y apt-transport-https \
    # Needed for certain gems
    build-essential \
    # Needed for postgres gem
    libpq-dev \
    # Needed for asset compilation
    nodejs
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


#                          #
# MISSING PACKAGES FOR TESTS
#                          #

# Install dependencies
RUN apt-get -yqq update && \
    apt-get -yqq --no-install-recommends install curl unzip wget && \
    apt-get -yqq --no-install-recommends install xvfb tinywm xauth && \
    apt-get -yqq --no-install-recommends install gnupg software-properties-common && \
    apt-get -yqq --no-install-recommends install ca-certificates && \
    ##chrome dependencies - necessário para instalar versões mais antigas do chrome
    apt-get -yqq --no-install-recommends install fonts-liberation libappindicator1 libasound2 libnss3 && \
    apt-get -yqq --no-install-recommends install libatk-bridge2.0-0 libatk1.0-0 libcups2 libgtk-3-0 libnspr4 && \
    apt-get -yqq --no-install-recommends install libxss1 libxtst6 xdg-utils && \
    update-ca-certificates && \
    rm -rf /var/lib/apt/lists/*

#Chrome browser to run the tests
ARG CHROME_VERSION=65.0.3325.181
RUN wget https://www.slimjet.com/chrome/download-chrome.php?file=lnx%2Fchrome64_$CHROME_VERSION.deb \
    && dpkg -i download-chrome*.deb || true
RUN dpkg --configure -a
RUN apt-get install -y -f \
    && rm -rf /var/lib/apt/lists/*

#Chrome Driver
ARG CHROME_DRIVER_VERSION=2.37
RUN mkdir -p /opt/selenium \
    && curl http://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip -o /opt/selenium/chromedriver_linux64.zip \
    && cd /opt/selenium; unzip /opt/selenium/chromedriver_linux64.zip; rm -rf chromedriver_linux64.zip; ln -fs /opt/selenium/chromedriver /usr/local/bin/chromedriver;

RUN mkdir potato
WORKDIR /potato

# ADD Gemfile /potato

ADD . /potato
RUN bundle install


# CMD bundle exec rails s