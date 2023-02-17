#!/bin/bash
# Copies the current directory as an archive to the remote server

WATUSER="yourusername" # uWaterloo username
REMOTEDIR="~/cs138/somedirectory" # Any remote directory to copy to

# Extra rsync options (--delete removes files on the remote that are not in your local copy)
# OPTS="--delete --exclude=.ccls-cache" # uncomment for --delete (ensure that your REMOTEDIR is correct before doing so)
OPTS="--exclude=.ccls-cache"

HOST="linux.student.cs.uwaterloo.ca"
rsync -av --progress $OPTS --exclude=.git --exclude="tmp.*" --exclude="scripts/outputs-actual" -e ssh ./ $WATUSER@$HOST:$REMOTEDIR
