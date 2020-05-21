FROM docker.io/websphere-liberty:javaee8

RUN mkdir -p /root/my-special-folder

COPY target/simple-stuff.war /config/dropins/
COPY config/server.xml /config/
COPY config/server.env /config/
COPY Dockerfile /root/my-special-folder
