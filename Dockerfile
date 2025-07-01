FROM openjdk:17-jdk

RUN apt-get update && apt-get install -y wget unzip

RUN wget https://github.com/traccar/traccar/releases/download/v5.13/traccar-linux-5.13.zip && \
    unzip traccar-linux-5.13.zip && \
    chmod +x traccar.run && \
    ./traccar.run

EXPOSE 8082 5000-5150

CMD ["/opt/traccar/bin/traccar", "start-foreground"]
