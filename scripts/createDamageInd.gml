///createDamageInd(x,y,damage,color,size);
var xx = argument0;
var yy = argument1;
var damage = argument2;
var color = argument3;
var size = argument4;
with(instance_create(xx,yy,obj_dmg_inc)){
    damage = string(other.damage);
    color = other.color;
    font = global.damage_font;
    size = other.size;
}
