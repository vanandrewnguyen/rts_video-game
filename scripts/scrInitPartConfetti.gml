///scrInitPartConfetti();
/* Initializes particle for victory confetti */

global.partConfetti = part_type_create();
var pt = global.partConfetti;

// Init the settings
part_type_sprite(pt, sConfetti, false, false, true); 
part_type_orientation(pt, 0, 360, 0, 45, 0);
part_type_gravity(pt, 0.3, 270);
part_type_direction(pt, 0, 360, 0, 30);
part_type_speed(pt, 2, 5, -0.3, 0);
part_type_size(pt, 0.2, 0.3, 0, 0);
part_type_life(pt, 45, 90);
part_type_alpha3(pt, 0.8, 0.9, 0.0001);
part_type_blend(pt, true);

