#!/bin/bash
case $1 in
"arth")
	cd /d/javadev/docker/arthurius && docker-compose up -d
	;;
*)
	echo "[arth]"
esac

