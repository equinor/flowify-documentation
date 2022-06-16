FROM alpine:3.13 as build



ENV HUGO_SRC=site \
  HUGO_DEST=dest \
  HUGO_BUILD_DRAFT=false \
  BASE_URL='baseURL = \/flowify\/'

ARG DOCKER_HUGO_VERSION="0.81.0"
ENV DOCKER_HUGO_NAME="hugo_extended_${DOCKER_HUGO_VERSION}_Linux-64bit"
ENV DOCKER_HUGO_BASE_URL="https://github.com/gohugoio/hugo/releases/download"
ENV DOCKER_HUGO_URL="${DOCKER_HUGO_BASE_URL}/v${DOCKER_HUGO_VERSION}/${DOCKER_HUGO_NAME}.tar.gz"
ENV DOCKER_HUGO_CHECKSUM_URL="${DOCKER_HUGO_BASE_URL}/v${DOCKER_HUGO_VERSION}/hugo_${DOCKER_HUGO_VERSION}_checksums.txt"
ARG INSTALL_NODE="true"

WORKDIR /build
#SHELL ["/bin/bash", "-eo", "pipefail", "-c"]
RUN apk add --no-cache --virtual .build-deps wget && \
    apk add --no-cache \
    git \
    bash \
    make \
    ca-certificates \
    libc6-compat \
    libstdc++ && \
    wget --quiet "${DOCKER_HUGO_URL}" && \
    wget --quiet "${DOCKER_HUGO_CHECKSUM_URL}" && \
    grep "${DOCKER_HUGO_NAME}.tar.gz" "./hugo_${DOCKER_HUGO_VERSION}_checksums.txt" | sha256sum -c - && \
    tar -zxvf "${DOCKER_HUGO_NAME}.tar.gz" && \
    mv ./hugo /usr/bin/hugo && \
    hugo version && \
    apk del .build-deps && \
    if [ "${INSTALL_NODE}" = "true" ]; then \
        echo "Installing Node.js and npm..." && \
        apk add --no-cache nodejs npm && \
        npm i -g npm && \
        npm cache clean --force && \
        echo "node version: $(node -v)" && \
        echo "npm version: $(npm -v)"; \
    fi && \
    rm -rf /build

WORKDIR /app

COPY . /app/

#RUN sed -i '1 s/baseURL.*/baseURL = "\/flowify\/" /' "site/config.toml"

# RUN head site/config.toml

# ENTRYPOINT [ "/bin/bash" ]

RUN npm install --prefix "${HUGO_SRC}" "${HUGO_SRC}"

RUN echo $(which hugo)

RUN /usr/bin/hugo --source="${HUGO_SRC}" --buildDrafts="${HUGO_BUILD_DRAFT}" \
    --destination="${HUGO_DEST}"  --debug --verbose



FROM nginxinc/nginx-unprivileged:1-alpine

#COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

COPY --from=build /app/site/dest /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

#EXPOSE 80
