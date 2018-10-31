#!/bin/bash

nix-build . -A image -o nix_docker_issue_image
docker load -i nix_docker_issue_image
docker run --rm -it nix-docker-issue bash
