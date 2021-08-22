///scrCreateCasing(x, y, dirMin, dirMax, spdMin, spdMax);
/* Create a bullet casing */

// Create instance and assign values
var inst = instance_create(argument0, argument1, oCasing);
inst.direction = random_range(argument2, argument3);
var spd = random_range(argument4, argument5);
inst.speed = spd;
inst.originSpd = spd;
