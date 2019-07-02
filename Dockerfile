FROM ubuntu:latest

WORKDIR /

RUN apt-get update && apt-get install -y curl

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.15.0/bin/linux/amd64/kubectl

RUN chmod +x ./kubectl

RUN mv ./kubectl /usr/local/bin/kubectl

ENTRYPOINT ["kubectl"]
