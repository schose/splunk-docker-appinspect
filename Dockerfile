FROM ubuntu:18.04

MAINTAINER Andreas Roth version: 0.1

RUN apt-get -y update && apt-get upgrade -y && apt-get install -y net-tools sudo iputils-ping mc python-pip libxml2-dev libxslt-dev lib32z1-dev python-lxml
RUN apt-get install -y libmagic1 lib32z1-dev wget
RUN wget http://download.splunk.com/misc/appinspect/splunk-appinspect-1.7.0.tar.gz
RUN pip install splunk-appinspect-1.7.0.tar.gz
RUN apt-get clean

ENV APPINSPECT_ARGS inspect /tmp/iqpress/app_iqpress/iqpress_ml_dgf/ --mode test

ADD entrypoint.sh /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/entrypoint.sh"]
