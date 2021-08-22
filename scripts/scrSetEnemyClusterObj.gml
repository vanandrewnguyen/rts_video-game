///scrSetEnemyClusterObj(x, y);
/* Sets the cluster chances for each unit depending on difficulty */

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
    case 1:
    command[0, 1] = 0.0;
    command[1, 1] = 0.15;
    command[2, 1] = 0.05;
    command[3, 1] = 0.05;
    command[4, 1] = 0.25;
    command[5, 1] = 0.2;
    break;
    case 2:
    command[0, 1] = 0.1;
    command[1, 1] = 0.1;
    command[2, 1] = 0.25;
    command[3, 1] = 0.1;
    command[4, 1] = 0.4;
    command[5, 1] = 0.25;
    break;
    case 3:
    command[0, 1] = 0.1;
    command[1, 1] = 0.15;
    command[2, 1] = 0.25;
    command[3, 1] = 0.1;
    command[4, 1] = 0.5;
    command[5, 1] = 0.75;
    break;
    case 4:
    command[0, 1] = 0.0;
    command[1, 1] = 0.15;
    command[2, 1] = 0.3;
    command[3, 1] = 0.0;
    command[4, 1] = 0.5;
    command[5, 1] = 0.75;
    break;
}


// Use chance script to run through chances above in table
for (var c=0;c<5;c++) {
    if (scrChance(command[c, 1])) { currentCommand = command[c, 0]; }
}   

// Check if it has bypassed all chances and remains blank
if (currentCommand == "") {
    currentCommand = command[choose(1, 3, 5, 5), 0];
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
