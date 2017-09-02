FROM debian:stretch

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get clean \
    && apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y ca-certificates-java \
    openjdk-8-jre-headless openjdk-8-jdk \
    bash tmux git wget curl htop
RUN git clone https://github.com/kamax-io/mxisd.git /mxisd
RUN cd /mxisd && git checkout auth-support && ./gradlew build
RUN useradd -r mxisd
RUN mkdir -p /etc/mxisd
RUN chown mxisd /etc/mxisd
RUN mkdir /opt/mxisd
RUN cp /mxisd/build/libs/mxisd.jar /opt/mxisd/
RUN chmod a+x /opt/mxisd/mxisd.jar
RUN mkdir /var/mxisd || true
RUN chown mxisd /var/mxisd
RUN rm -rf /mxisd
COPY /etc/* /etc/mxisd/
RUN mkdir /etc/firebase || true

CMD ["sh", "-c", "/opt/mxisd/mxisd.jar --spring.config.location=/etc/mxisd/ --spring.config.name=mxisd"]
EXPOSE 8090
VOLUME ["/var/mxisd"]
