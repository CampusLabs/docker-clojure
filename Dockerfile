FROM orgsync/java8
MAINTAINER Joshua Griffith

ENV LEIN_ROOT true

RUN wget -q -O /usr/bin/lein -- https://raw.githubusercontent.com/technomancy/leiningen/2.5.0/bin/lein \
    && chmod +x /usr/bin/lein \
    && lein > /dev/null 2>&1

CMD [ "lein" ]
