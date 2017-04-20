global.fireballSystem = part_system_create();
global.fireballType = part_type_create();

part_type_shape(global.fireballType,pt_shape_square);
part_type_scale(global.fireballType,0.1,0.1);
part_type_size(global.fireballType,0.5,1,-0.01,0);
part_type_orientation(global.fireballType,0,360,0,0,true);
part_type_colour3(global.fireballType,red,yellow,c_orange);
part_type_life(global.fireballType,15,15);