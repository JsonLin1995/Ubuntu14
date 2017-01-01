#!/bin/bash

FILES_PATH=$(grep /bin/bash /etc/passwd | awk -F ":" '{print $6 "/.bashrc"}')
#echo $FILES_PATH
sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/' $FILES_PATH
#source /root/.bashrc
#su $(last | awk '($8=="still" && $1!="root"){print $1}')
