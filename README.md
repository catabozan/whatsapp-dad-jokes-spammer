# whatsapp-dad-jokes-spammer
A bash script that uses a JavaScript function to send dad jokes into whatsapp conversations

## Usage
1. Open [WhatsApp Web](web.whatsapp.com).
2. Get the css selectors of the textarea and send button
3. Replace the selectors in `whatsapp_msg_sender.js`
4. Copy the function in `whatsapp_msg_sender.js` and paste it into the developer console
5. Run `dad_jokes_sender.sh` in terminal and focus the developer console(click on it) so the script can paste in the commands
6. Enjoy annoying your friends :)

## Configuration
- You can edit `dad_jokes_sender.sh` to set the amount of jokes to send and the delay between each one
(default 50 jokes, 5s delay between each one)

- You can edit `whatsapp_msg_sender.js` to set the css selectors for the textarea and the send button

