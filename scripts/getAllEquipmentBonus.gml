///getAllEquipmentBonus(bonusType)
var type = argument0;
assert(type != 0);
var bonus = 0;
for (var i = 0; i < 6; i++) {
    bonus += global.equipment[i,type];
}
return bonus;