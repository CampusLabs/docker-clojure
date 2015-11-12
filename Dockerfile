FROM quay.io/orgsync/java:1.8
MAINTAINER Joshua Griffith <joshua@orgsync.com>

ENV LEIN_ROOT true

RUN wget -q -O /usr/bin/lein -- https://raw.githubusercontent.com/technomancy/leiningen/2.5.3/bin/lein \
    && chmod +x /usr/bin/lein \
    && lein > /dev/null 2>&1

CMD [ "lein" ]
