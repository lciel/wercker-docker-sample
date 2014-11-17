FROM 127.0.0.1:49000/lciel/base:latest
MAINTAINER Shunichi Matsuda <lciel@gmail.com>

# Install Gems
RUN mkdir /app
WORKDIR /app
ADD ./Gemfile /app/
ADD ./Gemfile.lock /app/
RUN bundle install --system

# Create Rails Service
RUN mkdir /etc/service/rails
ADD ./docker/run.sh /etc/service/rails/run

# Copy Application Files
ADD . /app
RUN chown -R app:app /app

# Publish Port
EXPOSE 3000

CMD ["/sbin/my_init"]

