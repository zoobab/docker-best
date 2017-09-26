FROM alpine:3.5

COPY entry.sh /entry.sh
RUN chmod +x /entry.sh
ENTRYPOINT ["/entry.sh"]
HEALTHCHECK --interval=1s --timeout=1s CMD pgrep ping || exit 1
