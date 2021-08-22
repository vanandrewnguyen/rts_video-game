///scrUnitTakeDamage();
/* Executed when unit takes damage */

if (global.timeflow == 0) { exit; }

// Check if bullet exists and is within collision bounds
if (instance_exists(oBullet)) {
    var inst = instance_place(x, y, oBullet);
    
    // If bullet exists and it belongs to another team
    if (inst != noone && inst.team != teamIndex) {
        // Apply damage and stun effects
        hp -= inst.dmg;
        dmgFlashDraw = 1;
        alarm[1] = 5;
        
        // VFX
        scrSquish(-0.1,-0.1);
        
        // Particles
        part_type_direction(global.partShipShrapnel, inst.image_angle+180-32, inst.image_angle+180+32, 0, 0);
        part_particles_create(global.pSysBelow, x, y, global.partShipShrapnel, 1);
          
        // Exemptions - EMP Blast
        if (inst.sprite_index == sBulletEMP) {
            stunned = true;
            alarm[0] = random_range(60,90);
        }
        // Exemptions - Gravity Wave
        if (inst.sprite_index == sBulletGravity) {
            stunned = true;
            alarm[0] = random_range(60,90);
            var dir = inst.image_angle //+ 180;
            var force = 1;
            hsp += lengthdir_x(force, dir);
            vsp += lengthdir_y(force, dir);
        }
        
        // Special case - Enemy Base
        if (teamIndex == ENEMYINDEX && unitType == "station" && hp < maxHp/2) {
            if (instance_number(oInfantryEnemy) < 10) {
                if (scrChance(0.5)) {
                    scrSpawnEnemy(x + random_range(-64, 64), 
                                  y + random_range(-64, 64), oInfantryEnemy, noone);
                }
                with(oInfantryEnemy) { moveTargetX = x; moveTargetY = y; } 
            }
        }
        
        // Audio
        switch (unitType) {
            case "worker": scrPlayAudio(oAudioCont.audioEmImpact, sndShipHitSmall, 0.9, 1.1, 
                                        0.7, 0.8, x, y, 4); break;
            case "freighter": scrPlayAudio(oAudioCont.audioEmImpact, sndShipHitMedium, 0.9, 1.1, 
                                           0.7, 0.8, x, y, 4); break;
            case "infantry": scrPlayAudio(oAudioCont.audioEmImpact, sndShipHitSmall, 0.9, 1.1, 
                                          0.7, 0.8, x, y, 4); break;
            case "bomber": scrPlayAudio(oAudioCont.audioEmImpact, sndShipHitMedium, 0.9, 1.1, 
                                        0.7, 0.8, x, y, 4); break;
            case "Kamikaze": scrPlayAudio(oAudioCont.audioEmImpact, sndShipHitSmall, 0.9, 1.1, 
                                          0.7, 0.8, x, y, 4); break;
            case "Sniper": scrPlayAudio(oAudioCont.audioEmImpact, sndShipHitBig, 0.9, 1.1, 
                                        0.7, 0.8, x, y, 4); break;
            case "tank": scrPlayAudio(oAudioCont.audioEmImpact, sndShipHitBig, 0.9, 1.1, 
                                      0.7, 0.8, x, y, 4); break;
            default: scrPlayAudio(oAudioCont.audioEmImpact, sndShipHitBig, 0.9, 1.1, 
                                  0.7, 0.8, x, y, 4);
        }
        
        // Destroy the bullet
        with(inst) { 
            if (sprite_index != sBulletGravity) {
                instance_destroy(); 
            }
        }   
    }
}

// If hp is depleted, destroy unit
if (hp <= 0) { instance_destroy(); }
