FROM quay.io/orgsync/java:1.9.0
MAINTAINER Matt Tarantino <mtarantino@campuslabs.com>

ENV LEIN_ROOT true

RUN wget -q -O /usr/bin/lein -- https://raw.githubusercontent.com/technomancy/leiningen/2.8.1/bin/lein \
    && chmod +x /usr/bin/lein \
    && lein > /dev/null 2>&1

CMD [ "lein" ]
