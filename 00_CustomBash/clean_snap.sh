#!/bin/bash
LANG=C snap list --all | awk '/disabled/{print $1, $2}' |
while read snapname revision; do
    sudo snap remove "$snapname" --revision="$revision"
done
