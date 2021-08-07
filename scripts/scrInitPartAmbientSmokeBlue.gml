///scrInitPartAmbientSmokeBlue(num);

global.partAmbientSmokeBlue = part_type_create();
global.partEmitterSmokeBlue = part_emitter_create(global.pSysBackground);
var pt = global.partAmbientSmokeBlue;

// Init Emitter
part_emitter_region(global.pSysBackground, global.partEmitterSmokeBlue, 
                    -64, room_width+64, -64, room_height+64, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(global.pSysBackground, global.partEmitterSmokeBlue, 
                    global.partAmbientSmokeBlue, argument0);

// Init the settings
part_type_shape(pt, pt_shape_smoke);
part_type_size(pt, 1, 4, 0.01, 0);
part_type_orientation(pt, 0, 360, 0, 2, 0);
part_type_life(pt, 180, 450);
part_type_blend(pt, true);
part_type_alpha3(pt, 0.001, 0.02, 0.001);
part_type_colour3(pt, global.colDarkBlue, global.colDarkBlue, global.colDarkBlue);



