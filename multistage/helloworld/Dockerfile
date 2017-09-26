# FIRST PART
FROM alpine:3.5 AS firststage

RUN apk update
RUN apk add make gcc musl-dev

RUN mkdir -pv /root/code
COPY . /root/code/
RUN chown root.root -R /root/code
WORKDIR /root/code
RUN make

# SECOND PART
FROM alpine:3.5
COPY --from=firststage /root/code/helloworld /bin
RUN chmod +x /bin/helloworld
ENTRYPOINT ["/bin/helloworld"]
