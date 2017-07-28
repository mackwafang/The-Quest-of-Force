///checkPrerequisite(skill)
var skill = argument0;
var preSkill = global.skill[skill,3];
var checkLevel = global.level >= global.skill[skill,skillData.requiredLevel];
if (preSkill == -1) {
    return checkLevel
}
return (global.skill[preSkill,skillData.level] > 0 && checkLevel);