///scrEnemyAvoidBullet();
/* Attempts to move a unit away from nearby bullets */

if (instance_exists(oBullet) && global.timeflow == 1) {
    var inst = instance_nearest(x, y, oBullet);
    var dis = point_distance(x, y, inst.x, inst.y);
    
    if (dis < 64 && inst.team != teamIndex) {
        // Move side ways to avoid bullet
        var dir = point_direction(x, y, inst.x, inst.y) + 180;
        hsp += lengthdir_x(acc*2, dir);
        vsp += lengthdir_y(acc*2, dir);
    }   
}

// Clamp down maximum speeds
hsp = clamp(hsp, -maxSpd, maxSpd);
vsp = clamp(vsp, -maxSpd, maxSpd);
