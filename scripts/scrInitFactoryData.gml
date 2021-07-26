///scrInitFactoryData();
/*
Sets the stats for each type of unit to be built.
[0,0] = name;
[0,1] = cost;
[0,2] = max per level;
[0,3] = image;
[0,4] = object
*/
factoryAnim = 0; //Used to loop through
factoryAnimTar = 0;
factoryAnimScale = 1;

factoryBuildIndex[0,0] = "Worker";
factoryBuildIndex[0,1] = 20;
factoryBuildIndex[0,2] = 10;
factoryBuildIndex[0,3] = sWorkerIcon;
factoryBuildIndex[0,4] = oWorker;

factoryBuildIndex[1,0] = "Freighter";
factoryBuildIndex[1,1] = 30;
factoryBuildIndex[1,2] = 8;
factoryBuildIndex[1,3] = sFreighterIcon;
factoryBuildIndex[1,4] = oFreighter;

factoryBuildIndex[2,0] = "Infantry";
factoryBuildIndex[2,1] = 30;
factoryBuildIndex[2,2] = 10;
factoryBuildIndex[2,3] = sInfantryIcon;
factoryBuildIndex[2,4] = oInfantry;

factoryBuildIndex[3,0] = "Bomber";
factoryBuildIndex[3,1] = 40;
factoryBuildIndex[3,2] = 4;
factoryBuildIndex[3,3] = sBomberIcon;
factoryBuildIndex[3,4] = oBomber;

factoryBuildIndex[4,0] = "Kamikaze";
factoryBuildIndex[4,1] = 15;
factoryBuildIndex[4,2] = 8;
factoryBuildIndex[4,3] = sKamikazeIcon;
factoryBuildIndex[4,4] = oKamikaze;

factoryBuildIndex[5,0] = "Sniper";
factoryBuildIndex[5,1] = 80;
factoryBuildIndex[5,2] = 3;
factoryBuildIndex[5,3] = sSniperIcon;
factoryBuildIndex[5,4] = oSniper;

factoryBuildIndex[6,0] = "Tank";
factoryBuildIndex[6,1] = 70;
factoryBuildIndex[6,2] = 3;
factoryBuildIndex[6,3] = sTankIcon;
factoryBuildIndex[6,4] = oTank;

factoryBuildCount = array_height_2d(factoryBuildIndex);
