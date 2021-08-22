///scrSpawnEnemy(x, y, obj, clusterTarget);
/* Spawn enemy unit from enemy Station. Called from AI purchasing a ship. */

var cost = 0;
var shipID = argument2;

// Get cost depending on ID
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

// Limit the number of bosses
if (shipID == oGravityBoss) {
    var num = instance_number(oGravityBoss);
    if (num >= 1) {
        shipID = oTankEnemy;
    }
}   

// Check if we have enough money, then purchase it
if (global.enemyCurrency >= cost) {
    global.enemyCurrency -= cost;
    var inst = instance_create(argument0+random_range(-64,64), argument1, shipID);
    inst.clusterTarget = argument3;
} else {
    global.enemyCurrency += 20*global.difficulty*1.5;
}

