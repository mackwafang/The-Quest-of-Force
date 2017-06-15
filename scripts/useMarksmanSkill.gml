///useMarksmanSkill(key)
var key = argument0;
var mpUse = 0;
switch(key){
    case 1: mpUse = global.skill[32,6]+(global.skill[32,0]*10);
            if(global.skill[32,0] > 0){ //If skill is learnt
                if(global.sp >= mpUse){ // Check Mp count
                    if(global.skillCooldown[0] == 0){ //Check cooldown
                        global.sp -= mpUse; // Deduct mp
                        global.skillCooldown[0] = global.skillMaxCooldown[0]; //Start CD
                    }
                }
            }
            break;
    case 2: mpUse = global.skill[33,6]+(global.skill[33,0]*10);
            if(global.skill[33,0] > 0){ //If skill is learnt
                if(global.sp >= mpUse){ // Check Mp count
                    if(global.skillCooldown[1] == 0){ //Check cooldown
                        global.sp -= mpUse; // Deduct mp
                        global.skillCooldown[1] = global.skillMaxCooldown[1]; //Start CD
                    }
                }
            }
            break;
    case 3: mpUse = global.skill[34,6]+(global.skill[34,0]*10);
            if(global.skill[34,0] > 0){
                if(global.sp >= mpUse){
                    if(global.skillCooldown[2] == 0){
                        global.sp -= mpUse;
                        global.skillCooldown[2] = global.skillMaxCooldown[2];
                        for (var i = 0; i < useSkill(34,1)+5; i++) {
                            var arrow = instance_create(x,y,obj_force);
                            arrow.direction = image_angle+(2*i+power(-1,i));
                            arrow.speed = 5;
                            dmg_type = 0;
                            if (global.skillCooldown[1] > 300) {
                                dmg_mod += 1;
                                onFire = true;
                            }
                        }
                    }
                }
            }
            break;
    case 4: mpUse = global.skill[35,6]+(global.skill[35,0]*10);
            if(global.skill[35,0] > 0){
                if(global.sp >= mpUse){
                    if(global.skillCooldown[3] == 0){
                        global.sp -= mpUse;
                        global.skillCooldown[3] = global.skillMaxCooldown[3];
                    }
                }
            }
            break;
}