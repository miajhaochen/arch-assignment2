#!/bin/bash
# RMI registry and message manager start-up script

echo -n -e "\033]0;MESSAGE MANAGER\007"

echo "Starting RMI Registry and the Message Manager"
rmiregistry &
sleep 3
echo ""
java MessageManager &
