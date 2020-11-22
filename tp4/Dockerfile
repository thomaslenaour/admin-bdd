FROM mysql

ENV MYSQL_ROOT_PASSWORD=password

RUN apt-get update && apt-get install -y && apt-get update \
    && apt-get install vim -y \
    && apt-get install cron -y

RUN echo '0 17 * * 1 mysqldump -u root --password=password --all-databases | gzip -9 > /backup/all_databases_`date +"\%Y-\%m-\%d_"`.sql.gz' >> /var/spool/cron/crontabs/root

RUN apt-get install -y logrotate

RUN mkdir /backups && \
    echo "hello world" > /backups/all_databases.sql.bz2 && \
    echo '/backups/all_databases.sql.bz2 {\n\
    rotate 5\n\
    daily\n\
    postrotate\n\
        echo mysqldump -u root --password=password --all-databases | bzip2 > /backups/all_databases.sql.bz2\n\
    endscript\n\
}' > /etc/logrotate.d/conf