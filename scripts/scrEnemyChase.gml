///scrEnemyChase();
// Chase State
inCombat = true;

// Detect Player Ships
if (instance_exists(moveTarget)) {
    var dis = point_distance(x, y, moveTarget.x, moveTarget.y);
    var dir = point_direction(x, y, moveTarget.x, moveTarget.y);
    hsp += lengthdir_x(acc, dir);
    vsp += lengthdir_y(acc, dir);
    
    // Spritework
    unitAngle = dir;
    
    // Check if within range
    if (dis < attackRange) {
        state = "attack";
        atTarget = true;
        firingTarget = moveTarget;
    } else if (dis > chaseRange) {
        scrEnemyResetIdle();
    }
} else {
    scrEnemyResetIdle();
}

// Clamp down maximum speeds
hsp = clamp(hsp, -maxSpd, maxSpd);
vsp = clamp(vsp, -maxSpd, maxSpd);
