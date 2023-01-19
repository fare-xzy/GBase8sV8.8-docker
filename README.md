# 人大金仓数据库Docker镜像制作

## 使用前说明

license，一年有效期

版本为8sV8.8

## 使用

### 制作镜像

将安装好的数据库Server文件夹打包放置于工程内 重命名为GBASE.tar.gz ，执行如下命令。

```shell
docker build -t gbase:8sV8.8 ./
```

### 导入镜像

```shell
docker load --input ${name} 

docker rmi gbase:8sV8.8
```

### 创建并运行容器

```shell
docker run -dt --name gbase -p 9088:9088 gbase:8sV8.8
docker exec -it gbase /bin/bash
docker cp gbase:/opt/GBASE/gbase/tmp/online.log /root/
docker cp /lib64/libaio.so.1.0.1 gbase:/lib64
docker cp /lib64/libaio.so.1 gbase:/lib64
```