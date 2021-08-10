///scrMoveCam();
// Move the camera

// Get Input
var kR = (keyboard_check(ord("D")) || keyboard_check(vk_right));
var kL = (keyboard_check(ord("A")) || keyboard_check(vk_left));
var kU = (keyboard_check(ord("W")) || keyboard_check(vk_up));
var kD = (keyboard_check(ord("S")) || keyboard_check(vk_down));

// Get horizontal / vertical movement, returns 1 / 0 / -1
var h = kR - kL;
var v = kD - kU;

// Move Cam
hsp += camAcc * h;
vsp += camAcc * v;

// Friction
if (h == 0) { hsp = scrApproach(hsp, 0, camAcc); }
if (v == 0) { vsp = scrApproach(vsp, 0, camAcc); }

// Clamp Speed
hsp = clamp(hsp, -camMaxSpd, camMaxSpd);
vsp = clamp(vsp, -camMaxSpd, camMaxSpd);

// Set view port and reduce shake
view_xview[camIndex] += hsp + random_range(-mag, mag);
view_yview[camIndex] += vsp + random_range(-mag, mag);
mag = lerp(mag, 0, magLerp);

// Camera Lock
if (instance_exists(oStation)) {
    if (oStation.state == "selected") {
        camLock = true;
        camFrameWidth = camZoomMax * 0.5;
        view_xview[camIndex] = lerp(view_xview[camIndex], 
                                    oStation.x - camFrameWidth/2, 0.1);
        view_yview[camIndex] = lerp(view_yview[camIndex], 
                                    oStation.y - camFrameHeight/2, 0.1);
    } else { camLock = false; }
} else { camLock = false; }

// Clamp Cam to bounds
view_xview[camIndex] = clamp(view_xview[camIndex], 
                             -camBuffer, room_width - camFrameWidth); //+ camBuffer
view_yview[camIndex] = clamp(view_yview[camIndex], 
                             -camBuffer, room_height - camFrameHeight);





