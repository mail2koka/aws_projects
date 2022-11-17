# Build OPA Service directory, load policies and data, install and run OPA daemon
FROM alpine:latest
RUN apk --no-cache add curl  
ADD $PWD/data /data
VOLUME /data
RUN curl -L -o opa https://openpolicyagent.org/downloads/v0.46.1/opa_darwin_amd64
RUN chmod 777 ./opa 
EXPOSE 8181
CMD ./opa run -s ./data --skip-version-check