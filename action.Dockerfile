ARG ARGOCD_ACTIONS_VERSION=latest

FROM ghcr.io/nholuongut/argocd-actions:${ARGOCD_ACTIONS_VERSION}

ENTRYPOINT ["argocd-actions"]

