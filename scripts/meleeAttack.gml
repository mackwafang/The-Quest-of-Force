///meleeAttack(special)
var rangeInc = 0;
if(isSkillMax(24)) {
    if(global.skillCooldown[0] > 60) {
        rangeInc = 32;
    }
}

for(var i = 0; i < instance_number(obj_enemy_parent); i++){
    if(distance_to_object(instance_find(obj_enemy_parent,i)) < global.meleeRange+rangeInc){
        enemy[i] = instance_find(obj_enemy_parent,i);
        if(inViewRange(self,enemy[i],50)){
            with(enemy[i]){
                wipeTime = 30;
                if(enemy_health > 0){
                    if(global.dualWield){
                        repeat(2)
                        playerDealDamage(0,argument0);
                    }
                    knockback(self,other,0,5);
                    playerDealDamage(0,argument0);
                }
            }
        }
    }
}
for(i = 0; i < instance_number(obj_enemy_force); i++) {
    if(distance_to_object(instance_find(obj_enemy_force,i)) < global.meleeRange+rangeInc){
        enemyForce[i] = instance_find(obj_enemy_force,i);
        if(inViewRange(self,enemyForce[i],50)){        
            with(enemyForce[i]) {
                var reflected = instance_create(x,y,obj_force);
                reflected.speed = speed;
                reflected.direction = direction+180;
                reflected.damage = damage;
                reflected.dmg_mod = dmg_mod;
                reflected.useIce = true;
                instance_destroy();
            }
        }
    }
}
if(global.class == 1) { 
    if(isSkillMax(25) && global.skillCooldown[1] > 300) { 
        with(instance_create(x+lengthdir_x(choose(-1,1),image_angle+90),y+lengthdir_y(choose(-1,1),image_angle+90),obj_force)){
            dmg_type = 0;
            dmg_mod = 2;
            speed = 1.5;
            allowPierce = true;
            speedUp = true;
            homing = true;
            speedingRate = 1.04;
            image_xscale = 0.5;
            sprite_index = spr_skill27_sword;
            direction = other.image_angle;
        }
    }
}