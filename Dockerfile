FROM openjdk:8-alpine 
RUN apk add python curl \
    && mkdir -p /opt/local \
    && curl -o datax.tar.gz http://datax-opensource.oss-cn-hangzhou.aliyuncs.com/datax.tar.gz \
    && tar zxvf datax.tar.gz -C /opt/local/ \
    && rm datax.tar.gz \
    && apk del curl \
    && python /opt/local/datax/bin/datax.py /opt/local/datax/job/job.json
