///scrSetEnemyClusterObj(x, y);
var currentCommand = "";

switch(global.difficulty) {
    case 0:
    command[0, 1] = 0.0;
    command[1, 1] = 0.1;
    command[2, 1] = 0.05;
    command[3, 1] = 0.1;
    command[4, 1] = 0.25;
    command[5, 1] = 0.2;
    break;
}


for (var c=0;c<5;c++) {
    if (scrChance(command[c, 1])) { currentCommand = command[c, 0]; }
}   
// Check if it has bypassed all chances and remains blank
if (currentCommand == "") {
    currentCommand = command[choose(1, 5), 0];
}

return currentCommand;

/*
command[0, 0] = "guardPoint";
command[1, 0] = "guardBase";
command[2, 0] = "guardHighestMinefield";
command[3, 0] = "targetNearestPlayer";
command[4, 0] = "guardNearestMinefield";
command[5, 0] = "targetPlayerBase";
command[0, 1] = 0.1;
command[1, 1] = 0.1;
command[2, 1] = 0.1;
command[3, 1] = 0.1;
command[4, 1] = 0.1;
command[5, 1] = 0.1;
*/
