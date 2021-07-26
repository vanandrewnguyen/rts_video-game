///scrEnemyCharge();
if (instance_exists(firingTarget)) {
    var dirF = point_direction(x, y, firingTarget.x, firingTarget.y);
    unitAngle = dirF;
    moveTargetX = chargeX;
    moveTargetY = chargeY;
    scrUnitChargeFire();
}

// Move to coord
var dir = point_direction(x, y, moveTargetX, moveTargetY);
var dis = point_distance(x, y, moveTargetX, moveTargetY);
hsp += lengthdir_x(acc*2, dir);
vsp += lengthdir_y(acc*2, dir);
if (dis < sprite_width/2) {
    state = "idle";
    hsp /= 4;
    vsp /= 4;
}

// Clamp down maximum speeds
hsp = clamp(hsp, -maxSpd, maxSpd);
vsp = clamp(vsp, -maxSpd, maxSpd);
