FROM centos:centos7
MAINTAINER Shreegowri J via https://github.com/shreegowrij1106 <shreegowrij1106@gmail.com>
LABEL description "Portfolio extract from git and running on centos7 using apache"
WORKDIR /root
RUN yum -y install httpd && \
yum clean all && \
cp -rf /root/shreeData/profile/* /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
#EXPOSE 443
