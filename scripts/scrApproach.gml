///scrApproach(a, b, amount);
// Moves a to b by amount and returns result

if (argument0 < argument1) {
    argument0 += argument2;
    if (argument0 > argument1) {
        return argument1;
    }
} else {
    argument0 -= argument2;
    if (argument0 < argument1) {
        return argument1;
    }
}
return argument0;
