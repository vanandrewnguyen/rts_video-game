///scrInitPartBulletFire();
global.partBulletFire = part_type_create();
var pt = global.partBulletFire;

// Init the settings
part_type_sprite(pt, sBulletTrail, false, false, false);
part_type_direction(pt, 0, 360, 0, 0);
part_type_orientation(pt, 0, 360, 0, 0, true);
part_type_speed(pt, 1.5, 4, -0.1, 0);
part_type_size(pt, 0.5, 1.0, -0.025, 0);
part_type_blend(pt, true);  
part_type_life(pt, 60, 120);
part_type_alpha3(pt, 0.7, 0.9, 0.001);



