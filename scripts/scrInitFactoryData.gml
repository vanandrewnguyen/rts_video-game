///scrInitFactoryData();
/*
Sets the stats for each type of unit to be built.
[0,0] = name;
[0,1] = cost;
[0,2] = max per level;
[0,3] = image;
*/
factoryAnim = 0; //Used to loop through
factoryAnimTar = 0;
factoryAnimScale = 1;

factoryBuildIndex[0,0] = "Worker";
factoryBuildIndex[0,1] = 20;
factoryBuildIndex[0,2] = 8;
factoryBuildIndex[0,3] = sWorkerIcon;

factoryBuildIndex[1,0] = "Infantry";
factoryBuildIndex[1,1] = 30;
factoryBuildIndex[1,2] = 10;
factoryBuildIndex[1,3] = sInfantryIcon;

factoryBuildIndex[2,0] = "Bomber";
factoryBuildIndex[2,1] = 40;
factoryBuildIndex[2,2] = 4;
factoryBuildIndex[2,3] = sBomberIcon;

factoryBuildIndex[3,0] = "Kamikaze";
factoryBuildIndex[3,1] = 15;
factoryBuildIndex[3,2] = 8;
factoryBuildIndex[3,3] = sKamikazeIcon;

factoryBuildIndex[4,0] = "Sniper";
factoryBuildIndex[4,1] = 80;
factoryBuildIndex[4,2] = 3;
factoryBuildIndex[4,3] = sSniperIcon;

factoryBuildCount = array_height_2d(factoryBuildIndex);
