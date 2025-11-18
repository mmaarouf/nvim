FROM bash:latest

RUN apk add shellcheck \
            curl \
            github-cli

# bash_unit
RUN cd /bin && curl -s https://raw.githubusercontent.com/bash-unit/bash_unit/master/install.sh | bash

# circleci
RUN curl -fLSs https://raw.githubusercontent.com/CircleCI-Public/circleci-cli/main/install.sh | bash

ENTRYPOINT ["bash", "-l"]