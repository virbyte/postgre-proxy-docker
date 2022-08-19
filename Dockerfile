FROM drinternet/rsync:v1.4.2

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 5432

LABEL org.opencontainers.image.source = "https://github.com/virbyte/postgre-proxy-docker/"

ENTRYPOINT ["/entrypoint.sh"]
