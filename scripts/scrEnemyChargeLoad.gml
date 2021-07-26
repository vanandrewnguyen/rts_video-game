///scrEnemyChargeLoad();

// Charge at the enemy
if (reloadTimeInt > reloadTimeTar * 0.5 && instance_exists(oUnitParent))  {
    var inst = instance_nearest(x, y, oUnitParent);
    var dir = point_direction(x, y, inst.x, inst.y);
    var dis = point_distance(x, y, inst.x, inst.y);
    startChargeX = x;
    startChargeY = y;
    chargeX = x + lengthdir_x(dis*2, dir);
    chargeY = y + lengthdir_y(dis*2, dir);
    unitAngle = dir;
    moveTargetX = chargeX;
    moveTargetY = chargeY;
    state = "charge";
}
scrUnitChargeFire();
