FROM docker.elastic.co/beats/filebeat:6.4.3

LABEL MAINTAINER="roberto cardenas" 
LABEL CONTACT="rcardenas20@gmail.com"

USER logstash

ADD ./config/filebeat.yml /usr/share/filebeat/filebeat.yml
ADD ./modules.d /usr/share/filebeat

USER filebeat