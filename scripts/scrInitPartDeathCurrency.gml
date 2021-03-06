///scrInitPartDeathCurrency();
/* Initializes particle for currency trail */

global.partDeathCurrency = part_type_create();
var pt = global.partDeathCurrency;

// Init the settings
part_type_sprite(pt, sShipDeathCurrencyParticle, true, false, true);
part_type_direction(pt, 0, 360, 0, 0);
part_type_orientation(pt, 0, 360, 0, 0, true);
part_type_speed(pt, 0.05, 0.2, -0.0025, 0);
part_type_size(pt, 0.5, 1.0, -0.025, 0);
part_type_blend(pt, false);  
part_type_life(pt, 180, 300);
part_type_alpha3(pt, 0.7, 0.9, 0);
