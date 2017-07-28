///enemyDealDamage(type)
var type = argument0;
//obj_player.totalFade = 5;
var isCrit = false;
switch(type){
    case 0: if(irandom(99) < critRate){
                obj_player.damage = str+critDamage;
                isCrit = true;
            }
            else{
                obj_player.damage = str;
            }
            obj_player.damage -= global.stam div 10;
            break;
    case 1: if(irandom(99) < other.critRate){
                obj_player.damage = other.damage+other.critDamage;
                isCrit = true;
            }
            else {
                obj_player.damage = other.damage;
            }
            obj_player.damage -= (global.mana+global.stam) div 10;
            break;
}
if(isCrit) {
    with(instance_create(obj_player.x,obj_player.y-32,obj_dmg_inc)){
        damage = string(obj_player.damage);
        color = red;
        wait = -30;
        font = global.damage_font;
        size = 3;
    }
}
else {
    with(instance_create(obj_player.x,obj_player.y-32,obj_dmg_inc)){
        damage = string(obj_player.damage);
        color = red;
        font = global.damage_font;
        size = 2;
    }
}
with(obj_player){
    healthGen -= 30;
    manaGen -= 30;
    totalDamage += damage;
    health -= damage;
}