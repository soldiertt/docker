#!/bin/bash
case $1 in
"arth-mysql")
	cd /d/javadev/docker/mysql/arthurius && docker-compose up -d
	;;
*)
	echo "[arth-mysql]"
esac

