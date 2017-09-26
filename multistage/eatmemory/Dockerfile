#FROM alpine:3.5 AS firststage
FROM alpine:3.5

RUN apk update
RUN apk add make gcc musl-dev

RUN mkdir -pv /root/code
COPY . /root/code/
RUN chown root.root -R /root/code
WORKDIR /root/code
RUN make

FROM alpine:3.5
#COPY --from=firststage /root/code/eatmemory /bin
COPY --from=0 /root/code/eatmemory /bin
RUN chmod +x /bin/eatmemory
ENTRYPOINT ["/bin/eatmemory"]
