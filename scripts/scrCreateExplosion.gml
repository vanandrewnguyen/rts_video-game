///scrCreateExplosion(x, y, sprite, produceMore, howMany, xRange, yRange, sprite2);
// Create an explosion with a set sprite

var xx = argument0;
var yy = argument1;
var sprite = argument2;
var producer = argument3;
var num = argument4;
var xRange = argument5;
var yRange = argument6
var sprite2 = argument7;

var inst = instance_create(xx, yy, oExplosion);
inst.sprite_index = sprite;
inst.createMore = producer;
inst.createNum = num;
inst.createXRange = xRange;
inst.createYRange = yRange;
inst.createSprite = sprite2;
