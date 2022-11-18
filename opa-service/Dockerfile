# Build OPA Service directory, load policies and data, install and run OPA daemon
FROM alpine:latest
RUN apk --no-cache add curl  
ADD $PWD/data /data
VOLUME /data
#WORKDIR /data
RUN curl -L -o opa https://openpolicyagent.org/downloads/v0.46.1/opa_linux_amd64_static
RUN chmod 755 ./opa
RUN chmod 755 opa
RUN ls -ltra 
EXPOSE 8181
#ENTRYPOINT ["pwd"]
#ENTRYPOINT ["ls"]
#CMD echo “Hello World”
CMD ./opa run -s ./data 
#CMD ["./opa" "run" "-s" "./data" "--skip-version-check"]