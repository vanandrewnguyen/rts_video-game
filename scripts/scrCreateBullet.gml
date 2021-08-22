///scrCreateBullet(teamIndex, x, y, dir, spread, spd, dmg, sprite, decaySprite, psIndex, trail);
/* Create a bullet with stats */

// Grab arguments
var team = argument0;
var xx = argument1;
var yy = argument2;
var dir = argument3;
var spread = argument4;
var spd = argument5;
var dmg = argument6;
var sprite = argument7;
var decaySprite = argument8;
var particleIndex = argument9;
var trail = argument10;

// Create bullet instance and assign values
var inst = instance_create(xx, yy, oBullet);
var finalDir = dir + random_range(-spread, spread);
inst.team = team;
inst.dir = finalDir;
inst.spd = spd;
inst.image_angle = finalDir;
inst.dmg = dmg;
inst.sprite_index = sprite;
inst.decaySprite = decaySprite;
inst.psIndex = particleIndex;
inst.trail = trail;

// Exemptions - Gravity Wave
if (sprite == sBulletGravity) {
    inst.image_alpha = 0.25;
}
