///scrInitShipData();
/* Stores unit data to be displayed and used when purchasing and displaying ships */

// Current Ship on Display
currentShipHp = 0;
currentShipDmg = 0;
currentShipSpd = 0;
currentShipReload = 0;

// Target value to lerp to
currentShipHpTar = 0;
currentShipDmgTar = 0;
currentShipSpdTar = 0;
currentShipReloadTar = 0;

// Maximum values to compare current Ship to
maxShipHp = 6;
maxShipDmg = 3;
maxShipSpd = 3;
maxShipReload = 180;

/*
2D Array stores all the information for ship creation (used to draw stats)
[0,0] = hp;
[0,1] = dmg;
[0,2] = spd;
[0,3] = reloadSpd;
Worker / Freighter / Infantry / Bomber / Kamikaze / Sniper / Tank
*/

shipData[0,0] = 3;
shipData[0,1] = 0;
shipData[0,2] = 1.75;
shipData[0,3] = 180;

shipData[1,0] = 4;
shipData[1,1] = 0.2;
shipData[1,2] = 2;
shipData[1,3] = 180;

shipData[2,0] = 3;
shipData[2,1] = 1;
shipData[2,2] = 1.8;
shipData[2,3] = 60;

shipData[3,0] = 3;
shipData[3,1] = 0.5;
shipData[3,2] = 2.5;
shipData[3,3] = 120;

shipData[4,0] = 2;
shipData[4,1] = 1;
shipData[4,2] = 2.8;
shipData[4,3] = 180;

shipData[5,0] = 1.5;
shipData[5,1] = 3;
shipData[5,2] = 1.5;
shipData[5,3] = 180;

shipData[6,0] = 6;
shipData[6,1] = 0.5;
shipData[6,2] = 1.4;
shipData[6,3] = 20;


