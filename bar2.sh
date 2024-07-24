#!/bin/bash

while [ true ];
  do 
#    echo [$(mpc current)] [$(wpctl get-volume @DEFAULT_SINK@)] [$(date +"%a, %h %d] [%H:%M")]
    echo [$(mpc current)]
    sleep 1s
  done
