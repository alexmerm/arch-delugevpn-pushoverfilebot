#!/bin/bash
ls -l /var/run/docker.sock
echo "CHownING DOCKER"
chown nobody /var/run/docker.sock
ls -l /var/run/docker.sock
