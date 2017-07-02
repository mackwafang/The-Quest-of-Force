///useSwordmanSkill(key)
key = argument0;
mpUse = 0;
switch(key){
    case 1: mpUse = global.skill[24,6]+(global.skill[24,0]*10);
            if(global.skill[24,0] > 0){ //If skill is learnt
                if(global.sp >= mpUse){ // Check Mp count
                    if(global.skillCooldown[0] == 0){ //Check cooldown
                        global.sp -= mpUse; // Deduct mp
                        global.skillCooldown[0] = global.skillMaxCooldown[0]; //Start CD
                        addBuffList(getSkillName(24),3,global.skill[24,skillData.info],global.skillMaxCooldown[0]-60);
                    }
                }
            }
            break;
    case 2: mpUse = global.skill[25,6]+(global.skill[25,0]*10);
            if(global.skill[25,0] > 0){ //If skill is learnt
                if(global.sp >= mpUse){ // Check Mp count
                    if(global.skillCooldown[1] == 0){ //Check cooldown
                        global.sp -= mpUse; // Deduct mp
                        global.skillCooldown[1] = global.skillMaxCooldown[1]; //Start CD
                        addBuffList(getSkillName(25),4,global.skill[25,skillData.info],global.skillMaxCooldown[1]-300);
                    }
                }
            }
            break;
    case 3: mpUse = global.skill[26,6]+(global.skill[26,0]*10);
            if(global.skill[26,0] > 0){
                if(global.sp >= mpUse){
                    if(global.skillCooldown[2] == 0){
                        global.sp -= mpUse;
                        global.skillCooldown[2] = global.skillMaxCooldown[2];
                        for(i = 0; i < global.skill[26,0]*2; i++){
                            with(instance_create(x+lengthdir_x(power(-1,i),image_angle+90),y+lengthdir_y(power(-1,i),image_angle+90),obj_force)){
                                dmg_type = 0;
                                dmg_mod = useSkill(26,1);
                                alarm[2] = 20;
                                speed = (other.i/20)+0.5;
                                allowPierce = true;
                                speedUp = true;
                                speedingRate = 1.04;
                                sprite_index = spr_skill27_sword;
                                direction = other.image_angle+90*(power(-1,other.i));
                            }
                        }
                    }
                }
            }
            break;
    case 4: mpUse = global.skill[27,6]+(global.skill[27,0]*10);
            if(global.skill[27,0] > 0){
                if(global.sp >= mpUse){
                    if(global.skillCooldown[3] == 0){
                        global.sp -= mpUse;
                        global.skillCooldown[3] = global.skillMaxCooldown[3];
                        for(i = 0; i < instance_number(obj_enemy_parent); i++){
                            enemy[i] = instance_find(obj_enemy_parent,i);
                            if(enemy[i].x > view_xview[0] & enemy[i].x < view_xview[0]+view_wport[0]){
                                if(enemy[i].y > view_yview[0] & enemy[i].y < view_yview[0]+view_hport[0]){
                                    with(enemy[i]){
                                        repeat(10) playerDealDamage(0,false);
                                    }
                                }
                                health = round(health*0.9);
                            }
                        }
                        x = mouse_x;
                        y = mouse_y;
                    }
                }
            }
            break;
}