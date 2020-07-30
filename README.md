# Kafka Administration CLI
Builds docker image which is ready to run in k8s cluster to perform Kafka administration tasks using k8s Job.

## Build
* `./build.sh` to build docker image and pushes the image to DockerHub

## Run
* Make sure to delete existing job with the same name before running the job.
* To list all kafka topics: `oc apply -f kafka-list-topics.yaml`
* To create topic: `cat kafka-create-topic.yaml | TOPIC_NAME=test_kafka_topic envsubst | oc apply -f -`
