#!/bin/bash

while [ true ];
  do 
    xsetroot -name " $(echo [$(mpc current)] [$(wpctl get-volume @DEFAULT_SINK@)] [$(date +"%a, %h %d] [%H:%M")] )"
    sleep 1s
  done
