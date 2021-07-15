///scrUnitMove();
// Move a unit using trig

// Move ship
if (!atTarget) {
    var dir = point_direction(x, y, moveTargetX, moveTargetY);
    hsp += lengthdir_x(acc, dir);
    vsp += lengthdir_y(acc, dir);
    
    // Destroy target once reached
    var dis = point_distance(x, y, moveTargetX, moveTargetY);
    if (dis < sprite_width/4) {
        state = "idle";
        atTarget = true;
    }
    
    // Spritework
    unitAngle = dir;
}

// Clamp down maximum speeds
hsp = clamp(hsp, -maxSpd, maxSpd);
vsp = clamp(vsp, -maxSpd, maxSpd);



