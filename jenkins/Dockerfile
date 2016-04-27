FROM jenkins
MAINTAINER ryan@ryanhartje.com

USER root

RUN apt-get update -qq && apt-get install -qqy \
    supervisor

# Setup jenkins for 2222
# Lets also make sure to had root access if possible
RUN groupmod -g 2222 jenkins
RUN usermod -u 2222 -g 2222 jenkins

RUN mkdir -p /var/log/jenkins
RUN mkdir -p /var/log/supervisor

RUN chown -R jenkins. /var/log/

COPY files/etc/supervisor/supervisor.conf /etc/supervisor/conf.d/supervisor.conf
CMD ["/usr/bin/supervisord","-c","/etc/supervisor/conf.d/supervisor.conf"]
