#!/bin/sh
# simple progress logger for K-Savvy repo
MSG="$*"
if [ -z "$MSG" ]; then
  MSG="Checkpoint reached"
fi
mkdir -p progress
echo "$(date '+%Y-%m-%d %H:%M:%S') - $MSG" >> progress/log.txt
git add progress/log.txt
git commit -m "Progress: $MSG"
git push
