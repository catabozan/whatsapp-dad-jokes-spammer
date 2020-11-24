#!/bin/bash
send_a_joke() {
	joke=$(curl -H "Accept: application/json" https://icanhazdadjoke.com/ | jq ".joke")
	echo $joke | xclip -selection clipboard
	xdotool type "sndmsg($(xclip -o -selection clipboard))"
	xdotool key Return
}

sleep 5

i=1
while [ $i -le 50 ]
do
 send_a_joke
 sleep 5
 i=`expr $i + 1`
done
