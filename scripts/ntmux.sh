#!/bin/bash

# TMUX CONFIG #

if [ -z ${1} ];then echo -e "\n\n\terror: one parameter required (i.e., the name of the session) \n\n";exit;  fi

SESSIONNAME=${1}
HOSTNAME=`hostname`
tmux has-session -t $SESSIONNAME
if [ $? != 0 ]
then
        echo "OK - creating tmux session for ${SESSIONNAME}"
        tmux new-session -s $SESSIONNAME -n "w1" -d
        tmux set-option  status-left "${SESSIONNAME} | "
        tmux set-option  status-right " | ${HOSTNAME}"
        #tmux send-keys -t $SESSIONNAME "cd ~" C-m
        #tmux send-keys -t $SESSIONNAME "source ./.bashrc" C-m
	for i in $(seq 2 10)
        do
                name="w${i}"
                tmux new-window -n ${name}
                #tmux send-keys -vvv -t $SESSIONNAME "cd ~" C-m
        done
else
        echo "NO - tmux session for " ${SESSIONNAME} " already there - skipping"
fi
