FROM roundcube/roundcubemail:1.6.5-apache

## Add config.override.sh before the "exec" command in the entrypoint
RUN sed -i "$(sed -n "/./{x;p;x};\${=;}" /docker-entrypoint.sh | sed -n "\$p")i /config.override.sh" /docker-entrypoint.sh

COPY config.override.sh /config.override.sh
