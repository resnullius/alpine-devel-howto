#!/usr/bin/env bash

declare keys_dir=${KEYS_DIR:-~/.alpine/keys}
declare conf_dir=${CONF_DIR:-~/.alpine/conf}
declare repo_dir=${REPO_DIR:-$PWD/pkgs}

docker run --rm -ti \
  --entrypoint "sh" \
  -v "$PWD":/opt/src \
  -v "$repo_dir":/opt/repo \
  -v "$conf_dir":/opt/conf \
  -v "$keys_dir":/opt/keys \
  resnullius/alpine-devel
