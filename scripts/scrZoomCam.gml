///scrZoomCam(amount, view);
/* Applying zooming to the camera view port using scaling */

var amount = 1 + argument0;
var view = argument1;

// Limit zoom
if (camFrameWidth <= camZoomMin && amount < 1) exit;
if (camFrameWidth >= camZoomMax && amount > 1) exit;

// Offset
var offx = abs(camFrameWidth*amount - camFrameWidth);
var offy = abs(camFrameHeight*amount - camFrameHeight);

// Scale the view
camFrameWidth *= amount;
camFrameHeight *= amount;

// Adjust the view
if (amount < 1) {
    camFrameWidth += offx/2;
    camFrameHeight += offy/2;
} else if (amount > 1) {
    camFrameWidth -= offx/2;
    camFrameHeight -= offy/2;
}



