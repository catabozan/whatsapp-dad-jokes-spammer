#!/bin/bash
send_a_joke() {
	# fetches and parses the joke
	joke=$(curl -H "Accept: application/json" https://icanhazdadjoke.com/ | jq ".joke")
	
	# outputs the joke to the console and copies it to clipboard
	echo $joke | xclip -selection clipboard

	# pastes the clipboard inside the sender function
	xdotool type "sndmsg($(xclip -o -selection clipboard))"
	xdotool key Return
}

# initial delay
sleep 5

i=1

# sends 50 messages
while [ $i -le 50 ]
do
 send_a_joke

 # delay between each message
 sleep 5
 i=`expr $i + 1`
done
