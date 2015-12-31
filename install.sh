#!/bin/bash

sudo apt-get install supervisor xvfb fluxbox x11vnc

git clone git://github.com/kanaka/noVNC ${HOME}/noVNC

mkdir -p ${HOME}/bin
cp run.sh ${HOME}/bin/run-x11.sh

cp supervisord.conf ${HOME}/.supervisord.conf

mkdir -p ${HOME}/workspace/.c9/runners
cp runners/X11.run ${HOME}/workspace/.c9/runners/

jsonpatch --indent 4 ${HOME}/workspace/.c9/project.settings runners/X11-run-config.jsonpatch > /tmp/project.settings
mv /tmp/project.settings ${HOME}/workspace/.c9/project.settings