global.forceSystem = part_system_create();
global.forceType = part_type_create();

part_type_shape(global.forceType,pt_shape_square);
part_type_scale(global.forceType,0.1,0.1);
part_type_size(global.forceType,0.5,1,-0.01,0);
part_type_orientation(global.forceType,0,360,0,0,true);
part_type_colour1(global.forceType,$0000FF);
part_type_life(global.forceType,15,15);