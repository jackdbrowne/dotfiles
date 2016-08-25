#!/bin/bash

options=("Shutdown" "Reboot" "Hibernate" "Sleep")

if [ -z $@ ]
then
        printf '%s\n' "${options[@]}"
else
        option=$1
        case $option in
                "Shutdown" )
                        systemctl poweroff
                        ;;
                "Reboot" )
                        systemctl reboot
                        ;;
                "Hibernate" )
                        systemctl hibernate
                        ;;
                "Sleep" )
                        systemctl suspend
                        ;;
                *)
                        ;;
        esac
fi
