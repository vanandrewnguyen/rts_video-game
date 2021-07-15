///scrFactoryPurchaseItem();

var tempInst = -1;
switch(factoryBuildIndex[factoryAnimTar,0]) {
    case "Worker":
        tempInst = oWorker;
    break;
    case "Infantry":
        tempInst = oInfantry;
    break;
    case "Bomber":
        tempInst = oBomber;
    break;
    case "Kamikaze":
        tempInst = oKamikaze;
    break;
    case "Sniper":
        tempInst = oSniper;
    break;
}

// Create
var xx = x - 64 + random_range(-8, 8);
var yy = y + random_range(-32,32);
if (tempInst != -1) {
    var inst = instance_create(xx, yy, tempInst);
}

// Explosion
scrCreateExplosion(xx, yy, sExplosionCircleBig, false, 0, 0, 0, -1);
repeat(random_range(6, 10)) {
    part_particles_create(global.pSysBelow, 
                          xx + random_range(-32, 32), 
                          yy + random_range(-32, 32), 
                          global.partShipTrail, 1);
}
