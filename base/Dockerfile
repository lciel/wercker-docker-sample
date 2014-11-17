FROM phusion/baseimage:0.9.13
MAINTAINER Shunichi Matsuda <lciel@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN mkdir /setup
ADD ./install_packages.sh /setup/install_packages.sh
RUN /setup/install_packages.sh && rm -rf /setup

# Create application group and user
RUN groupadd app && useradd -g app -M -s /bin/false app
