FROM python:3-alpine

# Install our pre-reqs
RUN apk add --no-cache git bash curl jq && git config --global --add safe.directory /github/workspace

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
