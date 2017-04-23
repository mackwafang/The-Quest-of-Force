///playerDealDamage(type,special)
var type = argument0;
var special = argument1;
var isCrit = false;
totalFade = 5;
switch(type){
    case 0: if(irandom(99) < global.crit){
                damage = global.str+global.critAtt;
                isCrit = true;
                totalCrit = 5;
            }
            else{
                damage = global.str;
            }
            if(global.class == 2){
                if(global.skillCooldown[1] > 300){
                    damage += global.mana;
                }
            }
            if(!special){
                if(global.skill[49,0] > 0){
                    if(irandom(100) < useSkill(49,2)){
                        global.sp += round(damage*(useSkill(49,1)/100));
                        if(instance_exists(obj_player)){
                            with(instance_create(obj_player.x,obj_player.y-16,obj_dmg_inc)){
                                damage = round(other.damage*(useSkill(49,1)/100));
                                color = aqua;
                                font = global.damage_font;
                                size = 2;
                            }
                        }
                    }
                }
            }
            damage -= stam div 5;
            break;
    case 1: if(irandom(99) < global.crit){
                damage = max(global.mana+global.critAtt,1);
                isCrit = true;
                totalCrit = 5;
            }
            else{
                damage = max(global.mana,1);
            }
            if(other.specialAttack){
                if(global.skill[48,0] > 0){
                    if(irandom(100) < useSkill(48,2)){
                        health += round(damage*(useSkill(48,1)/100));
                        if(instance_exists(obj_player)){
                            with(instance_create(obj_player.x,obj_player.y-16,obj_dmg_inc)){
                                damage = round(other.damage*(useSkill(48,1)/100));
                                wait = 0;
                                color = green;
                                font = global.damage_font;
                                size = 2;
                            }
                        }
                    }
                }
            }
            if(global.class == 2){
                if(!other.useIce){
                    if(irandom(4) < 1){
                        addStatus(0,global.mana,5);
                    }
                }
                else{
                    if(irandom(4) < 3){
                        if(!other.isHeal) {
                            addStatus(1,global.mana,damage);
                        }
                    }
                }
            }
            damage -= mana div 5;
            knockback(self,other,0,1);
            break;
}
damage = max(1,round(damage*other.dmg_mod*max(1,useSkill(19,1))));
if(global.class == 1){
    if(global.skillCooldown[0] > 60){
        damage = round(damage*useSkill(24,1));
    }
}
if(!isCrit) {
    with(instance_create(x,y-32,obj_dmg_inc)){
        damage = string(other.damage);
        color = white;
        font = global.damage_font;
        size = 2;
    }
}
else {
    with(instance_create(x,y-32,obj_dmg_inc)){
        damage = string(other.damage);
        color = orange;
        wait = -30;
        font = global.damage_font;
        size = 3;
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