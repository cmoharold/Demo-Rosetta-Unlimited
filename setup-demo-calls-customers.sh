#!/bin/bash

export PID_FILE=pid_file.txt

function message() {
    echo
    echo "*** ${1}"
}

message "Starting java package to generate 'CALLS_CLIENTES_ENR' topic with call and customer data"
#nohup java -jar java/target/calls_enr_customers-1.0-SNAPSHOT-jar-with-dependencies.jar > /dev/null 2>&1 &
nohup docker container run --name rosetta --network=host --add-host=host.docker.internal:127.0.0.1 --rm -d rosetta-demo-calls-customers > /dev/null 2>&1 &
echo ${!} >> ${PID_FILE}
message "Background java process running"

message "Starting elasticsearch sink connector for topics CALLS_CLIENTES_ENR"
nohup confluent local config elastic-connector -- -d ./connectors/elastic-connector.json > /dev/null 2>&1 &
echo ${!} >> ${PID_FILE}
