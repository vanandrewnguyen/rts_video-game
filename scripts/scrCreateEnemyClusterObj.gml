///scrCreateEnemyClusterObj(x, y);
var currentCommand = "";
for (var c=0;c<5;c++) {
    if (scrChance(command[c, 1])) { currentCommand = command[c, 0]; }
}   
var clusterInst = instance_create(argument0, argument1, oEnemyCluster);
clusterInst.command = currentCommand; 
