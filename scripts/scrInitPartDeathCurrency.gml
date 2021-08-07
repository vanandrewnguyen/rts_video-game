///scrInitPartDeathCurrency();

global.partDeathCurrency = part_type_create();
var pt = global.partDeathCurrency;

// Init the settings
part_type_sprite(pt, sShipDeathCurrencyParticle, true, false, true);
part_type_direction(pt, 0, 360, 0, 0);
part_type_orientation(pt, 0, 360, 0, 0, true);
part_type_speed(pt, 0, 0.2, -0.0025, 0);
part_type_size(pt, 0.4, 1.0, -0.025, 0);
part_type_blend(pt, true);  
part_type_life(pt, 20, 60);
part_type_alpha3(pt, 0.7, 0.9, 0);
