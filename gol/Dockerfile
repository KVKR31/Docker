FROM tomcat:9-jdk8
LABEL NAME="vinod"
RUN adduser -h ${HOMEDIR} -s /bin/bash -D gameoflife
ARG DOWNLOAD_LOCATION="https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/gameoflife.war"
ARG USERNAME="gameoflife"
ARG HOMEDIR="/gameoflife"
WORKDIR ${HOMEDIR}
ADD  ${DOWNLOAD_LOCATION} /usr/local/tomcat/webapps/game-of-lifegameoflife.war
EXPOSE 8080
