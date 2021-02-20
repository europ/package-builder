FROM centos:7

RUN yum install -y rpmdevtools

COPY ./src/rpm/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT "/entrypoint.sh"
