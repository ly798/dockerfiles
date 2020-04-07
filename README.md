my dockerfiles
==============

[![Build Status](https://travis-ci.org/ly798/dockerfiles.svg?branch=master)](https://travis-ci.org/ly798/dockerfiles)

通过travis自动构建docker image并push到dockerhub

遍历并进入每个目录，扫描目录中的Dockerfile开头的文件(例如Dockerfile.4.8)，tag则为4.8，若无后缀则为latest

新建
----

新建镜像时可以引用其他git作为子模块，或者自己新建一个目录并创建Dockerfile

travis配置
----------

 - DOCKER_USERNAME: dockerhub用户名
 - DOCKER_PASSWORD: dockerhub密码

todo
----

~~目前每次提交都会触发所有镜像的构建，实现部分构建~~
