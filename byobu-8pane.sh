#!/bin/bash
byobu new-session -d -s PN

byobu select-pane -t 0
byobu split-window -h
byobu select-pane -t 0
byobu split-window -h
byobu select-pane -t 2
byobu split-window -h

byobu select-pane -t 0
byobu split-window -v

byobu select-pane -t 2
byobu split-window -v

byobu select-pane -t 4
byobu split-window -v

byobu select-pane -t 6
byobu split-window -v

byobu select-pane -t 1
byobu resize-pane -D 10

byobu select-pane -t 1
byobu resize-pane -D 10

byobu select-pane -t 3
byobu resize-pane -D 10

byobu select-pane -t 5
byobu resize-pane -D 10

byobu select-pane -t 7
byobu resize-pane -D 10

byobu select-pane -t 0
byobu send-keys "top" Enter

byobu select-pane -t 1
byobu send-keys "ping 127.0.0.1" Enter

byobu attach -t PN


