///scrExecuteWavesUsingChance()
// OLD - now we use preset clusters. More managable and easier to predict.
// Execute waves
if (timeWave > (dif[d, 3]*60)) {
    /*
    First we check our money, then player ships (number of workers / number of fighters), 
    then finally, we check our own number of fighters to give preference.
    */
    var finalClusterSize = dif[d, 0] + random_range(dif[d, 1], dif[d, 2]);
    
    // Money Check
    if (global.enemyCurrency < 50 * global.difficulty) {
        if (oStationEnemy.hp < 10) {
            dif[1, 5] += 0.05;
        }
        // 50% chance to create a worker / freighter ship to collect money
        dif[0, 5] += 0.1;
    }
    
    // Check Player Ships
    
    // Check Enemy Ships
    
    // Check Difficulty Settings
    switch(d) {
        case 0: 
        dif[0, 5] += 0.1; dif[1, 5] += 0.1; dif[2, 5] = 0; dif[3, 5] = 0; dif[4, 5] = 0;
        break;
        case 1: dif[2, 5] = 0; dif[3, 5] = 0;
        break;
        case 2: dif[2, 5] = 0; dif[3, 5] += 0.1;
        break;
        case 3: dif[2, 5] += 0.1;
        break;
        case 4: 
        dif[0, 5] += 0.1; dif[1, 5] += 0.2; dif[3, 5] += 0.2;
        dif[2,5] += 0.25; 
        break;
    }
    
    // Command for cluster
    // Last case - will guard base
    // First case, secure minefield
    
    // Create the ships
    repeat(finalClusterSize) {
        var spawnShip = noone;
        if (scrChance(dif[3, 5]) && instance_number(oSniperEnemy) < 4) {
            spawnShip = oSniperEnemy;
        } 
        if (scrChance(dif[2, 5]) && instance_number(oTankEnemy) < 4) {
            spawnShip = oTankEnemy;
        } 
        if (scrChance(dif[4, 5]) && instance_number(oKamikazeEnemy) < 8) {
            spawnShip = oKamikazeEnemy;
        }
        if (scrChance(dif[1, 5]) && instance_number(oInfantryEnemy) < 12) {
            spawnShip = choose(oInfantryEnemy, oBomberEnemy);
        }
        if (scrChance(dif[0, 5]) && instance_number(oWorkerEnemy) < 10) {
            if (d <= 3) {
                spawnShip = oWorkerEnemy;
            } else {
                spawnShip = oFreighterEnemy;
            }
        }
        
        if (spawnShip != noone) {
            var xGap = -64 + random_range(-16, 16);
            var yGap = random_range(-64, 64);
            var xx = oStationEnemy.x + xGap;
            var yy = oStationEnemy.y + yGap;
            
            // Create Ship and assign it to a cluster object
            instance_create(xx, yy, spawnShip);
            
            //Explosion
            scrPurchaseShipFX(xx, yy);
        }
        
    }
    
    // Reset
    timeWave = 0;
    scrResetSpawnChances();
}
