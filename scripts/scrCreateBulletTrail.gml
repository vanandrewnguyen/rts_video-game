///scrCreateBulletTrail(x, y, xySpread, dir, spread);
// Create a bullet trail particle

var xx = argument0;
var yy = argument1;
var randXY = argument2;
var dir = argument3;
var spread = argument4,


var inst = instance_create(xx + random_range(-randXY, randXY), 
                           yy + random_range(-randXY, randXY), 
                           oBulletTrail);
var finalDir = dir + random_range(-spread, spread);
inst.image_angle = finalDir;


