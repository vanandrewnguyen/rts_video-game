///scrToggleSelect(pressX, pressY, releaseX, releaseY);
/* Returns whether the object is selected if within bounds */
var pX = argument0;
var pY = argument1;
var rX = argument2;
var rY = argument3;

// Check if mouse is hover on top, or median coords are still valid
var mbon = (distance_to_point(pX, pY) < 4 && distance_to_point(rX, rY) < 4);
if (((median(pX, x, rX) == x) && (median(pY, y, rY) == y)) || mbon) {
    selected = true; 
} else {
    selected = false;
}


/*
Old Code could be improved, see above.

// Case: top left to bottom right
var tlbr = (x > pX && x < rX && y > pY && y < rY);
// Case: bottom left to top right
var bltr = (x > pX && x < rX && y < pY && y > rY);
// Case: bottom right to top left
var brtl = (x < pX && x > rX && y < pY && y > rY);
// Case: top right to bottom left
var trbl = (x < pX && x > rX && y > pY && y < rY);
// Case: clicking on unit
//var mbon = (distance_to_point(pX, pY) < 4 && distance_to_point(rX, rY) < 4); 

if (tlbr || bltr || brtl || trbl) { 
    selected = true; 
} else {
    selected = false;
}
*/

