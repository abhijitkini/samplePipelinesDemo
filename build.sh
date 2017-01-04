#!/bin/bash -e
if [ "$IS_PULL_REQUEST" != true ]; then
  sudo docker build -t $IMAGE_NAME:'TutorialJan4'.$BUILD_NUMBER .
else
  echo "skipping because it's a PR"
fi
