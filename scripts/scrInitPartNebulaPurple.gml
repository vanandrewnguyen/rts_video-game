///scrInitPartNebulaPurple(num, x1, x2, y1, y2);
var x1 = argument1;
var x2 = argument2;
var y1 = argument3;
var y2 = argument4;

global.partNebulaPurple = part_type_create();
global.partEmitterNebulaPurple = part_emitter_create(global.pSysBackground);
var pt = global.partNebulaPurple;

// Init Emitter
part_emitter_region(global.pSysBackground, global.partEmitterNebulaPurple, 
                    x1, x2, y1, y2, ps_shape_line, ps_distr_gaussian);
part_emitter_stream(global.pSysBackground, global.partEmitterNebulaPurple, 
                    global.partNebulaPurple, argument0);

// Init the settings
part_type_shape(pt, pt_shape_flare);
part_type_size(pt, 0.8, 3, 0.015, 0);
part_type_orientation(pt, 0, 360, 0, 2, 0);
part_type_life(pt, 200, 440);
part_type_blend(pt, true);
part_type_alpha3(pt, 0.001, 0.025, 0.001);
part_type_colour3(pt, global.colLightPurple, global.colDarkPurple, global.colLightPurple);



