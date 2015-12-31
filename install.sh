#!/bin/bash

sudo apt-get install supervisor xvfb fluxbox x11vnc

git clone git://github.com/kanaka/noVNC ${HOME}/noVNC

mkdir -p ${HOME}/bin
cp run.sh ${HOME}/bin/run-x11.sh

cp supervisord.conf ${HOME}/.supervisord.conf