///dropGold(value)
value = argument0;
print(value);
if(value >= 5000) {
    with(instance_create(x,y,obj_drop_item)) {image_index = 8;}
    dropGold(value-5000);
}
else if(value >= 500) {
    with(instance_create(x,y,obj_drop_item)) {image_index = 7;}
    dropGold(value-500);
}
else if(value >= 250) {
    with(instance_create(x,y,obj_drop_item)) {image_index = 6;}
    dropGold(value-250);
}
else if(value >= 100) {
    with(instance_create(x,y,obj_drop_item)) {image_index = 5;}
    dropGold(value-100);
}
else if(value >= 50) {
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
