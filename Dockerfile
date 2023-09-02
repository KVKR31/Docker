FROM amazoncorretto:11-alpine3.17
Label author="vinod"
RUN  adduser -h /petclinic -s /bin/sh -D petclinic
USER petclinic
WORKDIR /petclinic
ADD https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar /petclinic/spring-petclinic-2.4.2.jar
EXPOSE 8080
CMD ("java" "-jar" spring-petclinic-2.4.2.jar)