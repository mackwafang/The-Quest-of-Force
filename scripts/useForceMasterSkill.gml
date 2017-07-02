///useForceMasterSkill(key)
key = argument0;
mpUse = 0;
switch(key){
    case 1: mpUse = global.skill[20,6]+(global.skill[20,0]*10);
            if(global.skill[20,0] > 0){ //If skill is learnt
                if(global.sp >= mpUse){ // Check Mp count
                    if(global.skillCooldown[0] == 0){ //Check cooldown
                        global.sp -= mpUse; // Deduct mp
                        global.skillCooldown[0] = global.skillMaxCooldown[0]; //Start CD
                        addBuffList(getSkillName(20),0,global.skill[20,skillData.info],global.skillMaxCooldown[0]-60);
                    }
                }
            }
            break;
    case 2: mpUse = global.skill[21,6]+(global.skill[21,0]*10);
            if(global.skill[21,0] > 0){ //If skill is learnt
                if(global.sp >= mpUse){ // Check Mp count
                    if(global.skillCooldown[1] == 0){ //Check cooldown
                        global.sp -= mpUse; // Deduct mp
                        global.skillCooldown[1] = global.skillMaxCooldown[1]; //Start CD
                        addBuffList(getSkillName(21),1,global.skill[21,skillData.info],global.skillMaxCooldown[1]-300);
                    }
                }
            }
            break;
    case 3: mpUse = global.skill[22,6]+(global.skill[22,0]*10);
            if(global.skill[22,0] > 0){
                if(global.sp >= mpUse){
                    if(global.skillCooldown[2] == 0){
                        global.sp -= mpUse;
                        global.skillCooldown[2] = global.skillMaxCooldown[2];
                        for(var i = 0; i < useSkill(22,1); i++){
                            with(instance_create(x,y,obj_force)){
                                speed = 5;
                                direction = irandom(360);
                                homing = true;
                                destroyOnWall = false;
                                dmg_mod = 0.6;
                                if(isSkillMax(22)) {
                                    multiHit = true;
                                    maxHitInt = 1;
                                    hitInt = 1;
                                    maxHit = 4;
                                    dmg_mod *= 0.3;
                                }
                                target = instance_find(obj_enemy_parent,other.i & instance_number(obj_enemy_parent)-1);
                                alarm[0] = 1;
                            }
                        }
                    }
                }
            }
            break;
    case 4: mpUse = global.skill[23,6]+(global.skill[23,0]*10);
            if(global.skill[23,0] > 0){
                if(global.sp >= mpUse){
                    if(global.skillCooldown[3] == 0){
                        global.sp -= mpUse;
                        global.skillCooldown[3] = global.skillMaxCooldown[3];
                        addBuffList(getSkillName(23),2,global.skill[23,skillData.info],1800);
                        for(var i = 0; i < 10; i++){
                            with(instance_create(x,y,obj_force)){
                                speed = 5;
                                direction = irandom(360);
                                homePlayer = true;
                                bounce = true;
                                homePlayerOrder = 3;
                                dmg_mod = 1;
                                multiHit = true;
                                destroyWhenOut = false;
                                destroyOnWall = false;
                                hitInt = maxHitInt;
                                maxHit = 999999;
                                image_xscale = 2;
                                alarm[0] = 50;
                                alarm[1] = 1800;
                            }
                        }
                    }
                }
            }
            break;
}