FROM tomcat:9-jdk8
LABEL NAME="vinod"
RUN adduser -h /gameoflife -s /usr/local/tomcat/webapps
ARG USERNAME="gameoflife.war"
ARG HOMEDIR="/gameoflife"
USER ${USERNAME}
WORKDIR ${HOMEDIR}
ADD https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080
