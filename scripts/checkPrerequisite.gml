///checkPrerequisite(skill)
skill = argument0;
preSkill = global.skill[skill,3];
if(preSkill == -1) {return true;}
else{
    return global.skill[preSkill,0] != 0;
}