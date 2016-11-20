#!/bin/bash
case $1 in
"arth")
	cd /d/javadev/docker/arthurius && docker-compose up -d
	;;
"oz")
	cd /d/javadev/docker/oz && docker-compose up -d
	;;
*)
	echo "[arth|oz]"
esac

