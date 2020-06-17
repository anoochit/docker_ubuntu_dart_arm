FROM ubuntu 

WORKDIR /opt

RUN apt update && apt install curl unzip --yes && apt clean && curl -o dartsdk-linux-arm-release.zip https://storage.googleapis.com/dart-archive/channels/stable/release/2.8.4/sdk/dartsdk-linux-arm-release.zip && unzip dartsdk-linux-arm-release.zip && rm -rf dartsdk-linux-arm-release.zip 
ENV PATH="/opt/dart-sdk/bin:${PATH}"

