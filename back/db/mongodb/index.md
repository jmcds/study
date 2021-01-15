学习资源

[MongoDB manual](https://docs.mongodb.com/manual/)
[MongoDB Java driver](https://mongodb.github.io/mongo-java-driver/4.2/driver/getting-started/quick-start/)

[runoob](https://www.runoob.com/mongodb/mongodb-dropdatabase.html)

[docker hub](https://hub.docker.com/_/mongo?tab=description&page=1&ordering=last_updated)

docker-compose 配置

进入到制定目录下

yml文件内,新增配置如下,**可按照自己去看调整**, 具体可参考docker hub 或者官方配置

```yaml
  mongodb:
    image: mongo:4.4.2
    container_name: mongodb
    restart: always
    volumes:
      - ./apps/mongo/db:/data/db
      - ./apps/mongo/log:/var/log/mongodb
    ports:
      - 27017:27017
    environment:
      MONGO_INITDB_ROOT_USERNAME: admin
      MONGO_INITDB_ROOT_PASSWORD: admin
```



docker-compose 启动成功后,

进入到容器内 执行命令

```bash
docker exec -it mongodb bash
```

按照配置 切换数据库

执行鉴权(好像是从2.6版本起,需要鉴权,认证)

```bash
db.auth('admin','jspc!123')
```

创建用户

```bash
> db.createUser(
...   {
...     user: "demo",
...     pwd: "demo",
...     roles: [ { role: "dbOwner", db: "demo" } ]
...   }
... )
```

其中 role 可以有如下选择

- Read：允许用户读取指定数据库
-  readWrite：允许用户读写指定数据库
-  dbAdmin：允许用户在指定数据库中执行管理函数，如索引创建、删除，查看统计或访问system.profile
-  userAdmin：允许用户向system.users集合写入，可以找指定数据库里创建、删除和管理用户
-  clusterAdmin：只在admin数据库中可用，赋予用户所有分片和复制集相关函数的管理权限。
-  readAnyDatabase：只在admin数据库中可用，赋予用户所有数据库的读权限
-  readWriteAnyDatabase：只在admin数据库中可用，赋予用户所有数据库的读写权限
-  userAdminAnyDatabase：只在admin数据库中可用，赋予用户所有数据库的userAdmin权限
-  dbAdminAnyDatabase：只在admin数据库中可用，赋予用户所有数据库的dbAdmin权限。
-  root：只在admin数据库中可用。超级账号，超级权限

其他,可以按照需要curd操作

在以后,整合到 spring cloud 微服务项目