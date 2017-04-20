///setAllSkills(skillLevel)
/*
    set all skills to a certain level
    for max, use -1
*/
for(i = 0; i < array_height_2d(global.skill); i++){
    if(argument0 != -1)
        global.skill[i,0] = argument0;
    else
        global.skill[i,0] = global.skill[i,1];
}