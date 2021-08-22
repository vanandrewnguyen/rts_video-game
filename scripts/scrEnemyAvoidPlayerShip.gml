///scrEnemyAvoidPlayerShip();
/* Attempts to move an enemy unit away from nearby player ships */

if (instance_exists(oUnitParent) && global.timeflow == 1) {
    var inst = instance_nearest(x, y, oUnitParent);
    var dis = point_distance(x, y, inst.x, inst.y);
    
    if (dis < attackRange*0.4) {
        var dir = point_direction(x, y, inst.x, inst.y) + 180;
        hsp += lengthdir_x(acc/2, dir);
        vsp += lengthdir_y(acc/2, dir);
    }   
}

// Clamp down maximum speeds
hsp = clamp(hsp, -maxSpd, maxSpd);
vsp = clamp(vsp, -maxSpd, maxSpd);

