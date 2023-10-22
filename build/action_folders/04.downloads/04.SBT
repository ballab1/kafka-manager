#!/bin/bash

declare -A SBT=()
SBT['version']="${SCALA_VERSION:?}"
SBT['file']="/tmp/scala-${SBT['version']}.tgz"
SBT['url']="https://downloads.typesafe.com/scala/${SBT['version']}/scala-${SBT['version']}.tgz"
SBT['sha256_2.12.4']="9554a0ca31aa8701863e881281b1772370a87e993ce785bb24505f2431292a21"
SBT['sha256']="${SBT['sha256_'${SBT['version']}]}"
SBT['home']="${SCALA_HOME:-/usr/share/scala}"
