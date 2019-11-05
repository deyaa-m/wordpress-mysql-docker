FROM mysql:5.7.18
#copy backup.sql /tmp/
#RUN /bin/bash -c "/usr/bin/mysqld_safe --skip-grant-tables &" && \
#  sleep 5 && \
#  mysql -u root -e "CREATE DATABASE createdatabase" && \
#  mysql -u root createddatabase < /tmp/backup.sql
copy ./backup.sql /docker-entrypoint-initdb.d
ENV MYSQL_ROOT_PASSWORD=helloworld
ENV MYSQL_USER=userone
ENV MYSQL_PASSWORD=helloworld
ENV MYSQL_DATABASE=createddatabase

