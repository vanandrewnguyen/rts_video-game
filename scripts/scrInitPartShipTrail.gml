///scrInitPartShipTrail();
/* Initializes particle for ship trail */

global.partShipTrail = part_type_create();
var pt = global.partShipTrail;

// Init the settings
part_type_sprite(pt, sPartShipTrail, true, false, true);
part_type_direction(pt, 0, 360, 0, 0);
part_type_orientation(pt, 0, 360, 0, 0, true);
part_type_speed(pt, 0, 0.4, -0.001, 0);
part_type_size(pt, 0.4, 1.0, -0.025, 0);
part_type_blend(pt, true);  
part_type_life(pt, 40, 90);
part_type_alpha3(pt, 0.7, 0.9, 0);
