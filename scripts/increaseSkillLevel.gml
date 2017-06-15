///increaseSkillLevel(skill)
skill = argument0;
if(global.skill[skill,0] < global.skill[skill,1]){ // If skill level is not maxed
    global.skillPoints --; //Decrease skill level
    global.skill[skill,0] ++; // Increment
    for(i = 0; i < 4; i++){
        if(skill == i){
            if(global.skill[skill,0] == 1)
                global.str += useSkill(skill,1);
            else
                global.str += useSkill(skill,3);
        }
        if(skill == i+4){
            if(global.skill[skill,0] == 1)
                global.maxHP += useSkill(skill,1);
            else
                global.maxHP += useSkill(skill,3);

        }
        if(skill == i+8){
            if(global.skill[skill,0] == 1){
                global.mana += useSkill(skill,1);
                global.maxSP += useSkill(skill,2);
            }
            else{
                global.mana += useSkill(skill,3);
            }
        }
        if(skill == i+12){
            if(global.skill[skill,0] == 1)
                global.luck += useSkill(skill,1);
            else
                global.luck += useSkill(skill,3);
        }
        if(skill == i+43){
            if(global.skill[skill,0] == 1)
                global.stam += useSkill(skill,1);
            else
                global.stam += useSkill(skill,3);
        }
    }
    if (skill == 20+(global.class*4)) {global.skillMaxCooldown[0] += 60;}
    if (skill == 21+(global.class*4)) {global.skillMaxCooldown[1] += 60;}
    if(skill == 36) {global.crit += useSkill(skill,3);}
    if(skill == 50) {global.skill[48,6] = 12+useSkill(skill,1);}
    if(skill == 51) {global.skill[49,6] = 12+useSkill(skill,1);}
    global.skill[skill,5] += global.skill[skill,7]; //Increment primary effect
}
