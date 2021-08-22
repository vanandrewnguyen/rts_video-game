///scrEnemyIdle();
/* Idle state of enemy unit */

// Idle state
inCombat = false;

// Set friction
hsp = scrApproach(hsp,0,fric);
vsp = scrApproach(vsp,0,fric);

// Follow Cluster
if (instance_exists(clusterTarget)) {
    moveTarget = clusterTarget;
    state = "chase";
}

// Detect Player Ships
if (instance_exists(oUnitParent)) {
    var inst = instance_nearest(x, y, oUnitParent);
    var dis = point_distance(x, y, inst.x, inst.y);
    // Check if within range
    if (dis < chaseRange) {
        state = "chase";
        atTarget = false;
        moveTarget = inst;
        moveTargetX = inst.x;
        moveTargetY = inst.y;
    }
}


