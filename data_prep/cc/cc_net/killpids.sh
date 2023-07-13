#!/bin/bash

PNAME=/home/data/liuyue/miniconda3

ps axf | grep $PNAME | grep -v grep > pids.txt

while read -r pid; do
    kill -9 $pid
done < "pids.txt"