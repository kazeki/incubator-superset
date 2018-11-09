#!/usr/bin/env bash

set -ex

docker build -t xh-superset -f Dockerfile .
