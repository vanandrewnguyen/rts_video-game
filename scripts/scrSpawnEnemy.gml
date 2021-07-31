///scrSpawnEnemy(x, y, obj, clusterTarget);

var inst = instance_create(argument0+random_range(-64,64), argument1, argument2);
inst.clusterTarget = argument3;

switch(argument2) {
    case oWorkerEnemy: global.enemyCurrency -= 20; break;
    case oInfantryEnemy: global.enemyCurrency -= 30; break;
    case oFreighterEnemy: global.enemyCurrency -= 30; break;
    case oBomberEnemy: global.enemyCurrency -= 40; break;
    case oTankEnemy: global.enemyCurrency -= 70; break;
    case oSniperEnemy: global.enemyCurrency -= 80; break;
    case oKamikazeEnemy: global.enemyCurrency -= 15; break;
}
