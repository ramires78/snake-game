
#!/bin/sh
set -e

VERSION="${VERSION:-1}"
IMAGE="denisprokopenko/snake:$VERSION"

docker pull "$IMAGE"

docker rm -f snake || true

docker run -d --restart unless-stopped \
  --name snake \
  -p 8081:80 \
  "$IMAGE"
