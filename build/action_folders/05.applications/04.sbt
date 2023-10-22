#!/bin/bash

set -x

tar xzf "${SBT['file']}"
rm "/tmp/scala-${SBT['version']}/bin/"*.bat

mkdir "${SBT['home']}"
mv "/tmp/scala-${SBT['version']}/bin" "/tmp/scala-${SBT['version']}/lib" "${SBT['home']}"
ls -lR "${SBT['home']}"
env

ln -s "${SBT['home']}/bin/"* "/usr/bin/"


sbt sbtVersion
