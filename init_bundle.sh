#!/bin/bash
BUNDLE_PATH=`dirname "$0"`
BUNDLE_PATH=`cd "$PROJECT_PATH"; pwd`

git pull
git submodule update --init --recursive
