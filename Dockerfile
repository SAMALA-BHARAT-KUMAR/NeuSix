# Dockerfile
FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y openjdk-17-jdk && \
    apt-get clean

CMD ["java", "-version"]
