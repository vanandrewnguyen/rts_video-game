///scrInitPartAmbientTwinklingStars(num);
/* Initializes particle for ambient star background */

global.partAmbientStars = part_type_create();
global.partEmitterStars = part_emitter_create(global.pSysBackground);
var pt = global.partAmbientStars;

// Init Emitter
part_emitter_region(global.pSysBackground, global.partEmitterStars, 
                    -64, room_width+64, -64, room_height+64, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(global.pSysBackground, global.partEmitterStars, 
                    global.partAmbientStars, argument0);

// Init the settings
part_type_sprite(pt, sPartShipTrail, false, false, true);
part_type_blend(pt, true);
part_type_direction(pt, 0, 360, 0, 0);
part_type_orientation(pt, 0, 360, 0, 0, true);
part_type_speed(pt, 0.1, 0.5, -0.002, 0);
part_type_size(pt, 0.1, 0.75, -0.0075, 0);
part_type_life(pt, 30, 100);
part_type_alpha3(pt, 0.01, 0.5, 0.001);
