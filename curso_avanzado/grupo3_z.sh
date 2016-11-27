#!/bin/bash

bash ./grupo1_z.sh
bash ./grupo2_z.sh

date=`tempfile`
hostname=`tempfile`
hostname>>$hostname
date>>$date


zenity  --text-info --height 100 --width 100 \
	--title "NOMBRE DE LA MAQUINA" \
        --filename=$hostname 2>>/dev/null

zenity  --text-info --height 100 --width 100 \
        --title "FECHA DE HOY" \
        --filename=$date 2>>/dev/null

