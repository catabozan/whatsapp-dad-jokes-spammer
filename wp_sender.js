 // function to paste in web.whatsapp.com console

const sndmsg = (message) => {
	// creates event
	window.InputEvent = window.Event || window.InputEvent;

	var event = new InputEvent('input', {
		bubbles: true
	});

	// gets the textbox where the message is typed (selector may vary)
	const textbox = document.querySelector('._1hRBM > div:nth-child(2)');

	// sets the textbox text and event
	textbox.textContent = message;
	textbox.dispatchEvent(event);

	// selects and simulates click on send button (selector may vary)
	document.querySelector('._2Ujuu').click();

}
