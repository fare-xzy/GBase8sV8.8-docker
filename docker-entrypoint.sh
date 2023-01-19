#!/bin/sh


db_init(){
  /opt/GBASE/gbase/bin/oninit -ivy
}

if [ ! -s $1 /opt/GBASE/gbase/dbs/rootdbs ]
   then
      echo "执行初始化"
      db_init
fi

echo "服务停止"
/opt/GBASE/gbase/bin/onmode -ky

echo "服务启动"
/opt/GBASE/gbase/bin/oninit -vy




