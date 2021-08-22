///scrInitShipShrapnel();
/* Initializes particle for ship shrapnel */

global.partShipShrapnel = part_type_create();
var pt = global.partShipShrapnel;

// Init the settings
part_type_sprite(pt, sPartShipGib, false, false, false);
part_type_direction(pt, 0, 360, 0, 0);
part_type_orientation(pt, 0, 360, 0, 0, true);
part_type_speed(pt, 3, 8, -0.25, 0);
part_type_size(pt, 0.75, 1.2, -0.025, 0);
part_type_blend(pt, true);  
part_type_life(pt, 90, 180);
part_type_alpha3(pt, 0.8, 0.95, 0.001);



