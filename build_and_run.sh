#!/bin/bash

nix-build . -o nix_docker_issue_image
docker load -i nix_docker_issue_image
docker run --rm -it nix-docker-issue bash
