##
# build riot-web from github:wiresafe/riot-web
##
FROM node:8 AS builder
ENV NPM_CONFIG_LOGLEVEL warn
##
# build args
# ----------
# BRANCH=wiresafe-stage - staging branch (default)
# BRANCH=wiresafe-prod - production branch
##
ARG BRANCH=wiresafe-stage
RUN git clone --branch ${BRANCH} --depth=1 --single-branch https://github.com/wiresafe/riot-web
WORKDIR /riot-web

RUN npm install
RUN npm explore matrix-react-sdk -- npm install
RUN npm explore matrix-react-sdk -- npm run build
RUN npm run build

FROM nginx
COPY --from=builder /riot-web/webapp /usr/share/nginx/html
EXPOSE 80
ENTRYPOINT ["nginx","-g","daemon off;"]
