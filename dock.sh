#!/bin/bash
case $1 in
"arth")
	cd /d/dev/docker/arthurius && docker compose up -d
	;;
"oz")
	cd /d/dev/docker/oz && docker compose up -d
	;;
"yoga")
	cd /d/dev/docker/yoga && docker compose up -d
	;;
*)
	echo "[arth|oz]"
esac

