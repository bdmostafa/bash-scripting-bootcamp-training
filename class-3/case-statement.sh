#!/bin/bash

case "$1" in
   start)
       /usr/sbin/sshd
       ;;
   stop)
       kill $(cat /var/run/sshd.pid)
       ;;
esac


# case "$1" in
#    start)
#        /usr/sbin/sshd
#        ;;
#    stop)
#        kill $(cat /var/run/sshd.pid)
#        ;;
#     *)
#        echo "Usage: $0 start|stop" ; exit 1
#        ;;
# esac


# case "$1" in
#     start|START)
#         /usr/sbin/sshd
#         ;;
#     stop|STOP)
#         kill $(cat /var/run/sshd.pid)
#         ;;
#     *)
#         echo "Usage: $0 start|stop" ; exit 1
#         ;;
# esac


# read -p "Enter y or n:" ANSWER

# case "$ANSWER" in
#     [yY]|[yY][eE][sS])
#         echo "You answered yes."
#         ;;
#     [nN]|[nN][oO])
#         echo "You answered no."
#         ;;
#    *)
#         echo "Invalid answer."
#         ;;
# esac
