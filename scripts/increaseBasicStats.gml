///increaseBasicStats(str,stam,mana,luk)
global.str += argument0+(global.level div 20);
sendSystemMessage("+"+string(argument0+(global.level div 20))+" STR");
global.stam += argument1+(global.level div 20);
sendSystemMessage("+"+string(argument0+(global.level div 20))+" STAM");
global.mana += argument2+(global.level div 20);
sendSystemMessage("+"+string(argument0+(global.level div 20))+" MANA");
global.luck += argument3+(global.level div 10);
sendSystemMessage("+"+string(argument0+(global.level div 10))+" LUCK");