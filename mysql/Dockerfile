FROM mysql/mysql-server:5.7

LABEL version="1.0"
LABEL name="ROSETTA-DEMO MSYQL DATABASE"
LABEL description="Adaptación de la imagen de Mysql para incluir el script de creación de la base de datos"
LABEL args="No se requieren argumentos para la construcción"
MAINTAINER Rosetta

# Add a database
ENV MYSQL_DATABASE rosetta
ENV MYSQL_USER demo
ENV MYSQL_PASSWORD demo
ENV MYSQL_ROOT_PASSWORD demo

# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY ./ScriptDB.sql /docker-entrypoint-initdb.d/