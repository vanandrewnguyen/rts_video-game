///scrUnitChargeFire();

//Exemptions
if (unitType == "worker") { exit; }

// Firing
if (reloadTimeInt < reloadTimeTar) {
    // Load
    if (global.timeflow == 1) { reloadTimeInt++; }
} else {
    // Fire
    scrCreateBullet(teamIndex, x, y, unitAngle, bulletSpread,
                    bulletSpd, bulletDmg, bulletSprite, sBulletDecay,
                    -1, bulletTrail);
    scrCreateCasing(x, y, -bulletSpread*3, bulletSpread*3, bulletSpd/2, bulletSpd);
    reloadTimeInt = 0;
    
    // Shotgun Blast
    if (unitType == "Bomber") {
        repeat(4) {
            scrCreateBullet(teamIndex, x, y, unitAngle, 32, 4, 
                            0.2, sBulletRound, sBulletDecay, -1, true);
            scrCreateCasing(x, y, -bulletSpread*3, bulletSpread*3, bulletSpd/2, bulletSpd);
        }
    }
}
