#!/bin/bash

export ZOOKEEPER=localhost:2181
export KAFKA_BROKER=localhost:9092
export DATAGEN_ITERATIONS=100
export MAX_INTERVAL=5000
export PID_FILE=pid_file.txt

function message() {
    echo
    echo "*** ${1}"
}

function create_topic() {
    TOPIC=${1}
    PARTITIONS=${2:-1}
    message "Creating topic ${TOPIC} with ${PARTITIONS} partitions"
    kafka-topics --zookeeper ${ZOOKEEPER} --create --partitions ${PARTITIONS} --replication-factor 1 --topic ${TOPIC}
}

rm -f ${PID_FILE}



if [[ ! -z "$1" && $1 == 'ksql' ]]; then
    message "Running all KSQL setup scripts"

    ksql << EOF
    run script './querys/ksql/setup-calls-01.ksql';
    exit
EOF
else
    create_topic CALLS

    message "Starting ksql-datagen for topic CALLS"
    #nohup ksql-datagen schema=./datagen/calls.avro format=avro topic=CALLS key=id_telef_origen maxInterval=${MAX_INTERVAL} iterations=${DATAGEN_ITERATIONS} > /dev/null 2>&1 &
    nohup confluent local config datagen-calls -- -d ./connectors/datagen-calls.json > /dev/null 2>&1 &
    echo ${!} >> ${PID_FILE}
    #curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @./connectors/datagen-calls.json

    #kafka-avro-console-consumer --bootstrap-server localhost:9092 --topic CALLS

    message "Background datagen-calls running"
fi