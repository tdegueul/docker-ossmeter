FROM mongo:3.4

ADD http://ci3.castalia.camp/dl/ossmeter_dump_full.tar.gz /home/
WORKDIR /home/
RUN tar xzf ossmeter_dump_full.tar.gz
COPY mongo-restore.sh /home/mongo-restore.sh
RUN chmod 777 /home/mongo-restore.sh

CMD ["/bin/sh", "/home/mongo-restore.sh"]


