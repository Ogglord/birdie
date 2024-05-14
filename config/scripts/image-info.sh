#!/usr/bin/bash
## This script is responsible for updating image-info.json with image details
## Its sourced in the motd by default

set -oue pipefail

FEDORA_MAJOR_VERSION="40"
IMAGE_VENDOR="ogglord"
IMAGE_NAME="birdie-os"
IMAGE_INFO="/usr/share/ublue-os/image-info.json"
IMAGE_REF="ostree-image-signed:docker://ghcr.io/$IMAGE_VENDOR/$IMAGE_NAME"
IMAGE_BRANCH_NORMALIZED="latest"
IMAGE_TAG="latest"
IMAGE_REPO_NAME="birdie"
IMAGE_URL="https://github.com/$IMAGE_VENDOR/$IMAGE_REPO_NAME"
# case $FEDORA_MAJOR_VERSION in
#   39|40)
#     IMAGE_TAG="stable"
#     ;;
#   *)
#     IMAGE_TAG="$FEDORA_MAJOR_VERSION"
#     ;;
# esac

cat > $IMAGE_INFO <<EOF
{
  "image-name": "$IMAGE_NAME",
  "image-flavor": "Developer Edition",
  "image-vendor": "$IMAGE_VENDOR",
  "image-ref": "$IMAGE_REF",
  "image-tag": "$IMAGE_TAG",
  "image-branch": "$IMAGE_BRANCH_NORMALIZED",
  "image-repo-url": "$IMAGE_URL",
  "base-image-name": "Bazzite",
  "fedora-version": "$FEDORA_MAJOR_VERSION"
}
EOF