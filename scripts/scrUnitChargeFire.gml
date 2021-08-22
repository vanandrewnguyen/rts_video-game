///scrUnitChargeFire();
/* Firing script used when units are within range to open fire */

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
    
    // Exemption: Shotgun Blast
    if (unitType == "bomber") {
        repeat(4) {
            scrCreateBullet(teamIndex, x, y, unitAngle, 32, 4, 
                            0.2, sBulletRound, sBulletDecay, -1, true);
            scrCreateCasing(x, y, -bulletSpread*3, bulletSpread*3, bulletSpd/2, bulletSpd);
        }
    }
    
    // Particles
    part_type_direction(global.partBulletFire, unitAngle-32, unitAngle+32, 0, 0);
    part_particles_create(global.pSysAbove, x, y, global.partBulletFire, irandom_range(4,8));
    
    // Audio
    switch (bulletSprite) {
        case sBullet: scrPlayAudio(oAudioCont.audioEmCombat, sndShipFireSmall, 0.9, 1.1, 
                                   0.7, 0.8, x, y, 5); break;
        case sBulletRound: scrPlayAudio(oAudioCont.audioEmCombat, sndShipFireSmall, 0.9, 1.1, 
                                        0.4, 0.5, x, y, 5); break;
        case sBulletSniper: scrPlayAudio(oAudioCont.audioEmCombat, sndShipFireSniper, 0.9, 1.1, 
                                         0.7, 0.8, x, y, 5); break;
        case sBulletEMP: scrPlayAudio(oAudioCont.audioEmCombat, sndShipFireEMP, 0.9, 1.1, 
                                      0.7, 0.8, x, y, 5); break;
        case sBulletBomber: scrPlayAudio(oAudioCont.audioEmCombat, sndShipFireMedium, 0.9, 1.1, 
                                         0.7, 0.8, x, y, 5); break;
        case sBulletLaser: scrPlayAudio(oAudioCont.audioEmCombat, sndShipFireMedium, 0.9, 1.1, 
                                        0.7, 0.8, x, y, 5); break;
        case sBulletGravity: scrPlayAudio(oAudioCont.audioEmCombat, sndShipFireBoss, 0.9, 1.1, 
                                          0.7, 0.8, x, y, 5); break;
    }
}
