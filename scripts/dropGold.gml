///dropGold(value)
value = argument0;
if(value >= 50) {
    with(instance_create(x,y,obj_drop_item)) {image_index = 0;}
    dropGold(value-50);
}
else if(value >= 10) {
    with(instance_create(x,y,obj_drop_item)) {image_index = 1;}
    dropGold(value-10);
}
else if(value > 0){
    with(instance_create(x,y,obj_drop_item)) {image_index = 2;}
    dropGold(--value);
}
return 0;
