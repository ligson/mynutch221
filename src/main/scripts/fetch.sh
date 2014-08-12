#!/bin/sh
       
WORK_HOME=/data/bigdata/mynutch221-0.0.1

LIB_PATH=$WORK_HOME/conf
RUN_JAVA=$JAVA_HOME/bin/java

for jar in `ls $WORK_HOME/lib/*.jar`
	do LIB_PATH=$LIB_PATH:$jar
done

export LD_LIBRARY_PATH='$LD_LIBRARY_PATH'
$RUN_JAVA -Dfile.encoding=UTF-8 -classpath $LIB_PATH  org.apache.nutch.fetcher.FetcherJob $*

