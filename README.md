# Demo Rosetta Unlimited

Demonstration of the use of technologies related to data streaming processing.
- [Apache Kafka](https://kafka.apache.org/)
- [Confluent Platform](https://www.confluent.io/)
- [Debezium Connector](https://debezium.io/documentation/reference/1.3/connectors/mysql.html/)
- [Kafka Connect Datagen](https://www.confluent.io/hub/confluentinc/kafka-connect-datagen/)
- [Elasticsearch Sink Connector Connector](https://docs.confluent.io/current/connect/kafka-connect-elasticsearch/index.html/)
- [Kafka Streams](https://kafka.apache.org/documentation/streams/)
- [KsqlDB](https://ksqldb.io/)
- [MySQL](https://www.mysql.com/)
- [Elastic](https://www.elastic.co/es/elastic-stack/)

## Architecture

![alt text](images/Architecture.jpg "Streaming Data Architecture")

## Prerequisites

- [Install Confluent Platform](https://docs.confluent.io/current/installation/index.html//)
- Create the MySQL database and tables according to the script: mysql-rosetta-setup.sql



## Project execution
```console
foo@bar:~$ ./setup-demo-customers
foo@bar:~$ ./setup-demo-customers ksql
foo@bar:~$ ./setup-demo-calls.sh
foo@bar:~$ ./setup-demo-calls.sh ksql
foo@bar:~$ ./setup-demo-calls-customers.sh
```

## Checks

You can check the result with:
```console
foo@bar:~$ kafka-avro-console-consumer --bootstrap-server localhost:9092 --topic CALLS_CLIENTES_ENR --from-beginning
```

### Dashboard

![alt text](images/Dashboard_Rosetta.jpg "Dashboard Rosetta Demo")