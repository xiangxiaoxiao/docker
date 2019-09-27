# Base images 基础镜像
FROM centos:7.2.1511


ADD go1.12.5.linux-amd64.tar.gz /usr/local/

#WORKDIR 相当于cd

WORKDIR /usr/local/go/
export PATH=$PATH:/usr/local/go/bin

RUN yum install svn -y
