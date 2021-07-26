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
        
        with(inst) { instance_destroy(); }   
    }
}
if (hp <= 0) { instance_destroy(); }
