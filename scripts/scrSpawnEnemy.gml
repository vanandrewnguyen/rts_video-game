///scrSpawnEnemy(x, y, obj, clusterTarget);

var cost = 0;
var shipID = argument2;
switch(shipID) {
    case oWorkerEnemy: cost = 20; break;
    case oInfantryEnemy: cost = 30; break;
    case oFreighterEnemy: cost = 30; break;
    case oBomberEnemy: cost = 40; break;
    case oTankEnemy: cost = 70; break;
    case oSniperEnemy: cost = 80; break;
    case oKamikazeEnemy: cost = 15; break;
    case oGravityBoss: cost = 100; break;
}

if (shipID == oGravityBoss) {
    var num = instance_number(oGravityBoss);
    if (num >= 1) {
        shipID = oTank;
    }
}   

if (global.enemyCurrency >= cost) {
    global.enemyCurrency -= cost;
    var inst = instance_create(argument0+random_range(-64,64), argument1, shipID);
    inst.clusterTarget = argument3;
} else {
    global.enemyCurrency += 10;
}

