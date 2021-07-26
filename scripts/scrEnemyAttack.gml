///scrEnemyAttack();
// Attack state
inCombat = true;

// Set friction
hsp = scrApproach(hsp,0,fric);
vsp = scrApproach(vsp,0,fric);

// Detect Player Ships
if (instance_exists(firingTarget)) {
    var dis = point_distance(x, y, firingTarget.x, firingTarget.y);
    var dir = point_direction(x, y, firingTarget.x, firingTarget.y);
    // Check if within range
    if (dis > attackRange) {
        state = "chase";
        atTarget = false;
        moveTarget = firingTarget;
        moveTargetX = firingTarget.x;
        moveTargetY = firingTarget.y;
    }
    
    // Spritework
    unitAngle = dir;
    
    // Firing
    switch(unitType) {
        case "bomber": 
            scrEnemyChargeLoad(); 
        break;
        default: scrUnitChargeFire(); 
    } 
    
} else {
    scrEnemyResetIdle();
}


