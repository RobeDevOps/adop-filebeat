FROM docker.elastic.co/beats/filebeat:6.4.3

LABEL MAINTAINER="roberto cardenas" 
LABEL CONTACT="rcardenas20@gmail.com"

ADD ./config/filebeat.yml /usr/share/filebeat/filebeat.yml
RUN rm /usr/share/filebeat/modules.d/*
COPY ./modules.d/ /usr/share/filebeat/modules.d/

USER root
RUN chown -R filebeat:filebeat /usr/share/filebeat/* & chmod -R go-w /usr/share/filebeat/
USER filebeat