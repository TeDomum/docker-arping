#!/bin/sh

IFACE=$1; shift
TARGET=$1; shift
SOURCES=$*

while true; do
for SOURCE in $SOURCES; do

arping -c 1 -I $IFACE -S $SOURCE $TARGET
sleep 5

done
done
