///meleeAttack(special)

for(i = 0; i < instance_number(obj_enemy_parent); i++){
    if(distance_to_object(instance_find(obj_enemy_parent,i)) < 48){
        enemy[i] = instance_find(obj_enemy_parent,i);
        if(inViewRange(self,enemy[i],50)){
            with(enemy[i]){
                if(enemy_health > 0){
                    if(global.dualWield){
                        repeat(2)
                        playerDealDamage(0,argument0);
                    }
                    knockback(self,other,0,5);
                    playerDealDamage(0,argument0);
                    part_particles_create(other.system,x,y,other.part,1);
                }
            }
        }
    }
}