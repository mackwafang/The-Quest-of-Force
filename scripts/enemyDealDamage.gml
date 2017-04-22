///enemyDealDamage(type)
type = argument0;
obj_player.totalFade = 5;
switch(type){
    case 0: if(irandom(99) < critRate){
                obj_player.damage = str+critDamage;
            }
            else{
                obj_player.damage = str;
            }
            obj_player.damage -= global.stam div 10;
            break;
    case 1: if(irandom(99) < other.critRate){
                obj_player.damage = other.damage+other.critDamage;
            }
            else {
                obj_player.damage = other.damage;
            }
            obj_player.damage -= global.mana div 10;
            break;
}
with(obj_player){
    totalDamage += damage;
    health -= damage;
}
