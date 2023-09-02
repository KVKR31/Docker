FROM amazoncorretto:11-alpine3.17
Label author="vinod"
ARG USERNAME='petclinic'
ARG HOMEDIR='/petclinic'
ARG ENVIRONMENT='test-hello'
ENV ${ENVIRONMENT}
ARG DOWNLOAD_LOCATION='https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar'
RUN  adduser -h ${HOMEDIR} -s /bin/sh -D ${USERNAME}
USER ${USERNAME}
WORKDIR ${HOMEDIR}
ADD --chown=petclinic:petclinic ${DOWNLOAD_LOCATION}  "${HOMEDIR}/spring-petclinic-2.4.2.jar"
EXPOSE 8080
CMD ("java" "-jar" spring-petclinic-2.4.2.jar)