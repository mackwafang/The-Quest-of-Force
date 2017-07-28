///increaseHPSP(HP,SP)
global.maxHP += argument0+((global.level div 5)*10);
sendSystemMessage("+"+string(argument0+((global.level div 5)*10))+" HP");
global.maxSP += argument1+((global.level div 5)*10);
sendSystemMessage("+"+string(argument0+((global.level div 5)*10))+" SP");