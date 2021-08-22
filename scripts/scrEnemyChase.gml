///scrEnemyChase();
/* Chasing state of enemy unit */

// Detect Player Ships
if (instance_exists(moveTarget)) {
    var dis = point_distance(x, y, moveTarget.x, moveTarget.y);
    var dir = point_direction(x, y, moveTarget.x, moveTarget.y);
    hsp += lengthdir_x(acc, dir);
    vsp += lengthdir_y(acc, dir);
    
    // Spritework
    unitAngle = dir;
    
    if (moveTarget != clusterTarget) { 
        inCombat = true; 
        
        // Check if within range
        if (dis < attackRange) {
            state = "attack";
            atTarget = true;
            firingTarget = moveTarget;
        } else {
            var tempRange = 0;
            if (inCombat == true) {
                tempRange = chaseRange*2;
            } else {
                tempRange = chaseRange;
            }
            if (dis > tempRange) { scrEnemyResetIdle(); }
        }
    } else {
        // Detect Player Ships (if move target is the cluster, then we need to switch out)
        if (instance_exists(oUnitParent)) {
            var inst = instance_nearest(x, y, oUnitParent);
            var dis = point_distance(x, y, inst.x, inst.y);
            
            // Check if within range
            if (dis < chaseRange) {
                atTarget = false;
                moveTarget = inst;
                moveTargetX = inst.x;
                moveTargetY = inst.y;
            }
        }
    }
} else {
    scrEnemyResetIdle();
}

// Clamp down maximum speeds
hsp = clamp(hsp, -maxSpd, maxSpd);
vsp = clamp(vsp, -maxSpd, maxSpd);


