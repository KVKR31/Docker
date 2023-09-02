FROM tomcat:9-jdk8
LABEL NAME="vinod"
RUN adduser -h /gameoflife -s /bin/bash -D ${USERNAME}
ARG DOWNLOAD_LOCATION="https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/gameoflife.war"
ARG USERNAME="gameoflife.war"
ARG HOMEDIR="/usr/local/tomcat/webapps"
USER ${USERNAME}
WORKDIR ${HOMEDIR}
ADD --chown=${gameoflife}:{gameoflife} ${DOWNLOAD_LOCATION} "${HOMEDIR}gameoflife.war"
EXPOSE 8080
