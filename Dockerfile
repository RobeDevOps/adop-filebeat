FROM docker.elastic.co/beats/filebeat:6.4.3

LABEL MAINTAINER="roberto cardenas" 
LABEL CONTACT="rcardenas20@gmail.com"

ADD ./config/filebeat.yml /usr/share/filebeat/filebeat.yaml
ADD ./modules.d /usr/share/filebeat