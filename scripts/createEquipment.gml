///createEquipment(type,name,str,stam,mana,luck,hp,sp,min,max,crit,critDmg,class,value);
/*
    returns an array that hold equipment values
    0 - type of equipment
    1 - name of equipment
    2 - str bonus
    3 - stam bonus
    4 - mana bonus
    5 - luck bonus
    6 - hp bonus
    7 - sp bonus
    8 - min damage bonus
    9 - max damage bonus
    10 - critical rate bonus
    11 - critical damage bonus, in non-ratio value
    12 - only for class (use id)
    13 - resell value
*/
var array;
for (var i = 0; i < argument_count; i++) {
    array[i] = argument[i];
    if (i != 1) {
        assert(is_real(array[i]));
    }
}
assert(is_string(array[1]));
return array;