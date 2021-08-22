///scrCreateFlashingText(text, x, y, backCol, frontCol);
/* Creates a textbox which flashes */

// Grabs arguments
var t = argument0; 
var xx = argument1;
var yy = argument2;
var back = argument3;
var front = argument4;

// Creates instance
tex = instance_create(xx,yy,oTextFlash);
tex.text = t;
tex.backCol = back;
tex.frontCol = front;

