FROM registry.access.redhat.com/rhel7
MAINTAINER "Doun Baek" <dbaek@redhat.com>

RUN yum install httpd httpd-tools -y
RUN mkdir -p /etc/systemd/system.conf.d/

COPY env.conf /etc/systemd/system.conf.d/env.conf

EXPOSE 80

COPY run-httpd.sh .

CMD ["bash", "run-httpd.sh"]
