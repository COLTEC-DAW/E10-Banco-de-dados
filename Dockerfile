FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=root
COPY ./db/*.sql /docker-entrypoint-initdb.d/