///scrUnitTakeDamage();
if (instance_exists(oBullet)) {
    var inst = instance_place(x, y, oBullet);
    if (inst != noone && inst.team != teamIndex) {
        hp -= inst.dmg;
        scrSquish(-0.1,-0.1);
        // Exemptions - EMP Blast
        if (inst.sprite_index == sBulletEMP) {
            stunned = true;
            alarm[0] = random_range(60,90);
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
        
        with(inst) { instance_destroy(); }   
    }
}
if (hp <= 0) { instance_destroy(); }
