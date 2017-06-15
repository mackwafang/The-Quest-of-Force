///useSkill(skill,type)
skill = argument0;
type = argument1;
if(global.skill[skill,0] > 0){
    if(type == 1)
        return global.skill[skill,skillData.primaryEffect]; // Return primary effect
    else if(type == 2)
        return global.skill[skill,skillData.secondaryEffect]; // Return secondary effect
    else if(type == 3)
        return global.skill[skill,skillData.increaseEffect]; // Retrun increase rate
    else
        show_error("Skill usage incorrect",true);
}
return 0;