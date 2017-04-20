///enemyDealDamage(type)
type = argument0;
other.totalFade = 5;
switch(type){
    case 0: if(irandom(99) < critRate){
                other.damage = str+critDamage;
            }
            else{
                other.damage = str;
            }
            knockback(other,self,2,15);
            other.damage -= global.stam div 10;
            break;
}
with(other){
    totalDamage += damage;
    health -= damage;
}