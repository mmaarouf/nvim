FROM bash:latest

RUN apk add shellcheck curl

RUN cd /bin && \
    curl -s https://raw.githubusercontent.com/bash-unit/bash_unit/master/install.sh | bash

ENTRYPOINT ["bash", "-l"]