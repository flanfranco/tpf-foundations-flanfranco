FROM postgres:12.7
ENV POSTGRES_PASSWORD=secret
ENV POSTGRES_USER=username
ENV POSTGRES_DB=database
COPY ddl.sql /docker-entrypoint-initdb.d/ddl.sql
