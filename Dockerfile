FROM ubuntu:16.04

WORKDIR /mydir
COPY frontend-example-docker .
RUN apt-get update && \
apt-get install -y curl && \
apt-get install -y npm && \
curl -sL https://deb.nodesource.com/setup_10.x | bash && \
apt-get install -y nodejs && \
npm install

EXPOSE 5000

ENTRYPOINT ["npm"]
CMD ["start"]
