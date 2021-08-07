///scrInitPartAmbientSmokePink(num);

global.partAmbientSmokePink = part_type_create();
global.partEmitterSmokePink = part_emitter_create(global.pSysBackground);
var pt = global.partAmbientSmokePink;

// Init Emitter
part_emitter_region(global.pSysBackground, global.partEmitterSmokePink, 
                    -64, room_width+64, -64, room_height+64, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(global.pSysBackground, global.partEmitterSmokePink, 
                    global.partAmbientSmokePink, argument0);

// Init the settings
part_type_shape(pt, pt_shape_smoke);
part_type_size(pt, 1, 4, 0.01, 0);
part_type_orientation(pt, 0, 360, 0, 2, 0);
part_type_life(pt, 180, 450);
part_type_blend(pt, true);
part_type_alpha3(pt, 0.001, 0.02, 0.001);
part_type_colour3(pt, global.colLightPink, global.colDarkPink, global.colLightPink);



