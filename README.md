# datax
DataX 是阿里巴巴集团内被广泛使用的离线数据同步工具/平台，实现包括 MySQL、Oracle、SqlServer、Postgre、HDFS、Hive、ADS、HBase、TableStore(OTS)、MaxCompute(ODPS)、DRDS 等各种异构数据源之间高效的数据同步功能。

## 测试
```shell
docker run -it --rm --name datax -v ./job/job.json:/opt/local/datax/job/job.json xvjialing/datax:${tag} python /opt/local/datax/bin/datax.py /opt/local/datax/job/job.json
```
其中`${tag}`需要替换成相应tag名称
