FROM centos:7.9.2009
RUN groupadd -g 1000 gbasedbt && \
    useradd -g gbasedbt -u 1000 -d /home/gbasedbt -m -s /bin/bash gbasedbt && \
     echo "gbasedbt:@WSX3edc" | chpasswd
COPY profile /home/gbasedbt/.bash_profile
ADD GBASE.tar.gz /opt
ADD docker-entrypoint.sh /home/gbasedbt/
RUN chown -R gbasedbt:gbasedbt /opt/GBASE && \
    chown -R gbasedbt:gbasedbt /home/gbasedbt/ && \
    chmod 600 /opt/GBASE/gbase/dbs/rootdbs
EXPOSE 9088 9200 9300
CMD su - gbasedbt -c "source /home/gbasedbt/.bash_profile" && /bin/bash
CMD su - gbasedbt -c "sh /home/gbasedbt/docker-entrypoint.sh" && /bin/bash