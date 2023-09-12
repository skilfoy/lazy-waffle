#!/bin/bash

if ! command -v cliclick >/dev/null 2>&1; then
        read -p "cliclick is not installed. Would you like to install it now (y/n)? " install
        if [ "$install" == "y" ]; then
                if [ "$(uname)" == "Darwin" ]; then
                        brew install cliclick
                else
                        echo "Unable to install cliclick on this system."
                        exit 1
                fi
        else
                exit 0
        fi
fi

if [[ $# -eq 0 ]] ; then
    echo 'Syntax: ./jump.sh _speed-in-seconds_'
    exit 1
fi


speed=$1

resolution=$(system_profiler SPDisplaysDataType | grep "Resolution" | head -n 1 | awk '{print $2}')

width=$(echo "$resolution" | cut -d "x" -f 1)
height=$(echo "$resolution" | cut -d "x" -f 2)

while :
do
	x=$(awk -v min=0 -v max="$width" 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')
        y=$(awk -v min=0 -v max="$height" 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')
	cliclick m:$x,$y
	sleep "$speed"
done
