///scrCreateShipGib(x, y, spd, fric, rotSpd, num, angleMin, angleMax);
var xx = argument0;
var yy = argument1;
var spd = argument2;
var fric = argument3;
var rotSpd = argument4;
var num = argument5;
var angleMin = argument6;
var angleMax = argument7;

// Create the particle
for (var i=0;i<num;i++) {
    var inst = instance_create(xx, yy, oShipGib);
    inst.spd = spd;
    inst.dir = random_range(angleMin, angleMax);
    inst.fric = fric;
    inst.rotSpd = rotSpd;
}   



