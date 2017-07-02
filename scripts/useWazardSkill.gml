///useWazardSkill(key)
var key = argument0;
var mpUse = 0;
switch(key){
    case 1: mpUse = global.skill[28,6]+(global.skill[28,0]*10);
            if(global.skill[28,0] > 0){ //If skill is learnt
                if(global.sp >= mpUse){ // Check Mp count
                    if(global.skillCooldown[0] == 0){ //Check cooldown
                        global.sp -= mpUse; // Deduct mp
                        global.skillCooldown[0] = global.skillMaxCooldown[0]; //Start CD
                        addBuffList(getSkillName(28),5,global.skill[28,skillData.info],global.skillMaxCooldown[0]-60);
                        with(instance_create(x,y,obj_force)){
                            visible = true;
                            dmg_mod = 1+(useSkill(28,1)/100);
                            sprite_index = spr_magic_circle;
                            image_xscale = 0;
                            image_yscale = 0;
                            isHeal = true;
                            multiHit = true;
                            maxHitInt = 30;
                            hitInt = 0;
                            destroyOnWall = false;
                            maxHit = 9999;
                            alarm[1] = 300;
                        }
                    }
                }
            }
            break;
    case 2: mpUse = global.skill[29,6]+(global.skill[29,0]*10);
            if(global.skill[29,0] > 0){ //If skill is learnt
                if(global.sp >= mpUse){ // Check Mp count
                    if(global.skillCooldown[1] == 0){ //Check cooldown
                        global.sp -= mpUse; // Deduct mp
                        global.skillCooldown[1] = global.skillMaxCooldown[1]; //Start CD
                        addBuffList(getSkillName(29),6,global.skill[29,skillData.info],global.skillMaxCooldown[1]-300);
                    }
                }
            }
            break;
    case 3: mpUse = global.skill[30,6]+(global.skill[30,0]*10);
            if(global.skill[30,0] > 0){
                if(global.sp >= mpUse){
                    if(global.skillCooldown[2] == 0){
                        global.sp -= mpUse;
                        global.skillCooldown[2] = global.skillMaxCooldown[2];
                        skillAmmo = global.skill[30,1]*5;
                    }
                }
            }
            break;
    case 4: mpUse = global.skill[31,6]+(global.skill[31,0]*10);
            if(global.skill[31,0] > 0){
                if(global.sp >= mpUse){
                    if(global.skillCooldown[3] == 0){
                        global.sp -= mpUse;
                        global.skillCooldown[3] = global.skillMaxCooldown[3];
                        addBuffList(getSkillName(31),7,global.skill[31,skillData.info],global.skillCooldown[3]-600);
                    }
                }
            }
            break;
}