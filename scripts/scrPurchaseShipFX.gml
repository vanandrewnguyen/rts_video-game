///scrPurchaseShipFX(x, y);
var xx = argument0;
var yy = argument1;

scrCreateExplosion(xx, yy, sExplosionCircleBig, false, 0, 0, 0, -1);
repeat(random_range(6, 10)) {
       part_particles_create(global.pSysAbove, 
       xx + random_range(-32, 32), 
       yy + random_range(-32, 32), 
       global.partShipTrail, 1);
}
repeat(random_range(3, 6)) {
       part_particles_create(global.pSysAbove, 
       xx + random_range(-32, 32), 
       yy + random_range(-32, 32), 
       global.partShipEnemyTrail, 1);
}
