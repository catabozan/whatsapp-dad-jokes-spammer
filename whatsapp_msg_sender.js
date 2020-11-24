 const sndmsg = (message) => {

 window.InputEvent = window.Event || window.InputEvent;

  var event = new InputEvent('input', {
    bubbles: true
  });

const textbox = document.querySelector('._1hRBM > div:nth-child(2)');

textbox.textContent = message;
textbox.dispatchEvent(event);

document.querySelector('._2Ujuu').click();
 }
