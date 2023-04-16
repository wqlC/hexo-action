FROM node:18-buster-slim

LABEL version="1.0.3"
LABEL repository="https://github.com/wqlC/hexo-action"
LABEL homepage="https://wqlc.github.io"
LABEL maintainer="wqlc <wql2014302721@gmail.com>"

COPY entrypoint.sh /entrypoint.sh
COPY sync_deploy_history.js /sync_deploy_history.js

RUN apt-get update > /dev/null && \
    apt-get install -y git openssh-client > /dev/null ; \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
