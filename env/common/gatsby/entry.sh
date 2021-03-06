#!/bin/sh
set -e

export GATSBY_DIR="/site"
export PATH="$PATH:/usr/local/bin/gatsby"

# Decide what to do
if  [ "$1" == "develop" ]
then
  rm -rf $GATSBY_DIR/public
  gatsby develop --host 0.0.0.0

elif  [ "$1" == "build" ]
then
  rm -rf $GATSBY_DIR/public
  gatsby build

elif  [ "$1" == "stage" ]
then
  rm -rf $GATSBY_DIR/public
  gatsby build
  gatsby serve --port 8000

else
  exec $@

fi