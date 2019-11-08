# docker

搭建docker编译环境


利用DaoCloud提供的加速器
1.curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://2a22c3ad.m.daocloud.io

2.systemctl restart docker

代码规范：
http://doc.bullteam.cn/guide/



docker  镜像的删除
 
镜像删除 : 1.先查出所有的容器2.停止运行的容器3.删除要删除的镜像 根据镜像ID删除
 
列出所有运行的ID
docker ps 
 
列出所有的容器的id
docker ps -a -q
 
 
 
 
docker  容器删除
 
删除正在运行的容器
docker  rm -f 容器的id
删除未运行的容器
docker  rm 容器的id
 
停止容器
docker stop 停止容器ID
启动容器
docker start
重启容器
docker restart
 
 
 
 
1.先停止运行的容器
 
docker ps 列出所有运行的容器
docker ps -a -q 显示所有容器包括未运行的 -q静默模式 只显示容器编号
 
docker stop $(docker ps -a -q) 停止所有的container
 
docker rm $(docker ps -a -q) 删除所有的container
 
docker images 查看有哪些镜像
 
想要删除未标记的 images，也就是那些id为<None>的image的话可以用
 
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
 
要删除全部image的话
 
docker rmi $(docker images -q)
 
2.再删除镜像
 
docker rmi -f 4ab4c602aa5e#镜像的ID 



