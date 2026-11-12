
#!/bin/sh
set -e

VERSION="${VERSION:-1}"
IMAGE="denisprokopenko/snake:$VERSION"

docker build -t "$IMAGE" .

printf '%s\n' "$DOCKER_TOKEN" | docker login -u "$DOCKER_USER" --password-stdin

docker push "$IMAGE"
