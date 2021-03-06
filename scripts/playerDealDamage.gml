///playerDealDamage(type,special)
var type = argument0;
var special = argument1;
var isCrit = false;
totalFade = 5;
damage += other.damage;
switch(type){
        case 0: 
            damage = global.str;
            damage += getAllEquipmentBonus(equipData.str);
            if(irandom(99) < global.crit){
                damage += global.critAtt+getAllEquipmentBonus(equipData.critDmg);
                isCrit = true;
                totalCrit = 5;
            }
            if(global.class == 2){
                if(global.skillCooldown[1] > 300){
                    damage += global.mana;
                }
            }
            if(global.class == 1) {
                knockback(self,other,3,3);
            }
            if(!special){
                if(global.skill[49,0] > 0){
                    if(irandom(100) < useSkill(49,2)){
                        global.sp += round(damage*(useSkill(49,1)/100));
                        if(instance_exists(obj_player)){
                            if (displayDamage) {
                                var dmgInd = instance_create(obj_player.x,obj_player.y-16,obj_dmg_inc);
                                dmgInd.damage = round(damage*(useSkill(49,1)/100));
                                dmgInd.color = aqua;
                                dmgInd.font = global.damage_font;
                                dmgInd.size = 2;
                            }
                        }
                    }
                }
            }
            damage -= (stam+getAllEquipmentBonus(equipData.stam)) div 2;
            break;
        case 1: 
            damage = global.mana;
            damage += getAllEquipmentBonus(equipData.mana);
            if(irandom(99) < global.crit){
                damage += global.critAtt+getAllEquipmentBonus(equipData.critDmg);
                isCrit = true;
                totalCrit = 5;
            }
            if(other.specialAttack){
                if(global.skill[48,0] > 0){
                    if(irandom(100) < useSkill(48,2)){
                        health += round(damage*(useSkill(48,1)/100));
                        if(instance_exists(obj_player)){
                            if (displayDamage) {
                                var dmgInd = instance_create(obj_player.x,obj_player.y-16,obj_dmg_inc);
                                dmgInd.damage = round(damage*(useSkill(48,1)/100));
                                dmgInd.wait = 0;
                                dmgInd.color = green;
                                dmgInd.font = global.damage_font;
                                dmgInd.size = 2;
                            }
                        }
                    }
                }
            }
            if(global.class == 0) {
                if(global.skillCooldown[1] > 300) {
                    if(global.skill[21,skillData.level] == global.skill[21,skillData.maxLevel]) {
                        health += 5
                        global.sp += 5;
                    }
                }
            }
            if(global.class == 2){
                var str = global.mana;
                var t = 300;
                var chance = 49;
                if (global.skillCooldown[1] > 300) {
                    if (isSkillMax(29)) {
                        str *= 2;
                        t *= 2
                        chance += 25;
                    }
                }
                if(!other.useIce){
                    if(irandom(99) < chance-25){
                        addStatus(0,t,str);
                    }
                }
                else{
                    if(irandom(99) < chance+25){
                        if(!other.isHeal) {
                            addStatus(1,t,str);
                        }
                    }
                }
            }
            damage -= (mana+stam+getAllEquipmentBonus(equipData.mana)+getAllEquipmentBonus(equipData.stam)) div 2;
            knockback(self,other,1,2);
            break;
}
damage = max(1,round(damage*other.dmg_mod*max(1,useSkill(19,1))*random_range(min(global.minDmg+getAllEquipmentBonus(equipData.minDmg),global.maxDmg+getAllEquipmentBonus(equipData.maxDmg)),global.maxDmg+getAllEquipmentBonus(equipData.maxDmg))));
if (damageTimer < damageTimerMax) {
    damageTimer += 20;
}
totalPlayerDamage += damage;
totalHits++;
damageSize = 1.5;
if(global.class == 1){
    if(global.skillCooldown[0] > 60){
        damage = round(damage*useSkill(24,1));
    }
}
if (displayDamage) {
    var dmgInd = instance_create(x+irandom(sprite_width)*choose(-1,1),y+irandom(sprite_height)*choose(-1,1),obj_dmg_inc);
    dmgInd.damage = string(damage);
    dmgInd.font = global.damage_font;
    if (isCrit) {
        dmgInd.size = 3;
        dmgInd.color = orange;
    }
    else {
        dmgInd.size = 2;
        wait = -30;
        dmgInd.color = white;
    }
}
/*
if(damage > enemy_max_health){
    with(instance_create(x,y-32,obj_dmg_inc)){
        damage = "Overkill#x"+string((other.damage/other.enemy_max_health)*100);
        wait = -60;
        color = red;
        font = global.damage_font;
        size = 3;
    }
}*/
enemy_health -= damage;
totalDamage += damage;
return 0;