ARG GO_VERSION=1.17-alpine3.14
ARG FROM_IMAGE=alpine:3.14

FROM golang:${GO_VERSION} AS builder
LABEL maintainer="Nho Luong <luongutnho@hotmail.com>"
WORKDIR /app

COPY ./ /app

RUN apk update && \
  apk add ca-certificates gettext git make curl unzip && \
  rm -rf /tmp/* && \
  rm -rf /var/cache/apk/* && \
  rm -rf /var/tmp/*

RUN make build-for-container

FROM ${FROM_IMAGE}

LABEL org.opencontainers.image.source="https://github.com/nholuongut/argocd-actions"

COPY --from=builder /app/dist/argocd-actions-linux /bin/argocd-actions

ENTRYPOINT ["argocd-actions"]

