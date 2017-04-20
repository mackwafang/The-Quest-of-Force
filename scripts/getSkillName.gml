///getSkillName(skill)
var skill = global.skill[argument0,4];
var returnString = "";
for(i = 0; i < string_length(skill); i++){
    if(string_char_at(skill,i) == "]"){
        return string_copy(skill,0,i);
    }
}
return "";