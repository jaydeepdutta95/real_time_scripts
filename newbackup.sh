#!/bin/bash

echo "backup taking on $date"



sudo tar -cvpf /home/ubuntu/system-back.tar --absolute-names /home/ubuntu/firstfolder/scripts

echo "backup done"
