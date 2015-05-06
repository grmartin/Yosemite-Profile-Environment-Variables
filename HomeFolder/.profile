#!/bin/bash

if [ -n "${EXPORT_CMD+1}" ]; then
  echo "Export is defined, using value provided."
else
	EXPORT_CMD=export
fi

osx_launchctl() {
	IFS='=' read -r EV_KEY EV_VAL <<< "$1"
	/bin/launchctl setenv $EV_KEY $EV_VAL
}

set_java() {
	$EXPORT_CMD JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk$1.jdk/Contents/Home
	$EXPORT_CMD JDK_HOME=$JAVA_HOME
	$EXPORT_CMD JRE_HOME=$JAVA_HOME/jre
	$EXPORT_CMD J2SE_HOME=$JRE_HOME
}

$EXPORT_CMD GIT_EDITOR="/usr/local/bin/bbedit --new-window -w --resume --encoding utf-8 " 
$EXPORT_CMD ANDROID_HOME=/Users/grmartin/unix/opt/android
$EXPORT_CMD GOROOT=`/usr/bin/which go`
$EXPORT_CMD GOPATH=/Users/grmartin/go

set_java "1.8.0_25"

#. ~/unix/setup-env.sh

