FROM adminer:4.7.0

ENV ADMIN_PORT 8080
# ENV ADMINER_PLUGINS
ENV ADMINER_DESIGN 'brade'

COPY adminer-entrypoint.sh /usr/local/bin/

CMD ["adminer-entrypoint.sh"]
