FROM amazoncorretto:11
Label author="vinod"
RUN mkdir petclinic
WORKDIR useradd -h /petclinic -s /bin/sh -D petclinic
USER /petclinic
ADD https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/petclinic /spring-petclinic-2.4.2.jar 
EXPOSE 8080
CMD ("java" "-jar" spring-petclinic-2.4.2.jar)