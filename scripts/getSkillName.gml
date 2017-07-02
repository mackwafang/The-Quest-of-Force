///getSkillName(skill)
var skill = global.skill[argument0,4];
if (string_char_at(skill,1) == "[") {
    for(i = 2; i < string_length(skill); i++){
        var c = string_char_at(skill,i);
        assert(is_string(c));
        if(c == "]"){
            return string_copy(skill,2,i-1);
        }
    }
}
return "";