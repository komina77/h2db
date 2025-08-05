#!/bin/sh

# DB作成
java -cp $PLAY_HOME/framework/lib/h2-1.4.200.jar:$PLAY_HOME/framework/lib/mysql-connector-java-8.0.28.jar \
    org.h2.tools.RunScript \
    -url jdbc:h2:/work/example -user sa \
    -script init.sql

# h2console および h2サーバ起動
java -cp $PLAY_HOME/framework/lib/h2-1.4.200.jar:$PLAY_HOME/framework/lib/mysql-connector-java-8.0.28.jar:$PLAY_HOME/framework/lib/postgresql-42.3.3.jar \
    org.h2.tools.Server \
    -tcp -tcpAllowOthers -baseDir /work \
    -web -webAllowOthers \
#    -webAdminPassword pass \
