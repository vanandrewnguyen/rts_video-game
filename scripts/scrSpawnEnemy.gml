///scrSpawnEnemy(x, y, obj, clusterTarget);

var cost = 0;
switch(argument2) {
    case oWorkerEnemy: cost = 20; break;
    case oInfantryEnemy: cost = 30; break;
    case oFreighterEnemy: cost = 30; break;
    case oBomberEnemy: cost = 40; break;
    case oTankEnemy: cost = 70; break;
    case oSniperEnemy: cost = 80; break;
    case oKamikazeEnemy: cost = 15; break;
}

if (global.enemyCurrency >= cost) {
    global.enemyCurrency -= cost;
    var inst = instance_create(argument0+random_range(-64,64), argument1, argument2);
    inst.clusterTarget = argument3;
} else {
    global.enemyCurrency += 10;
}

