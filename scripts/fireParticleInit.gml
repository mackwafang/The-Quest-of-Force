global.fireSystem = part_system_create();
global.fireType = part_type_create();

part_type_shape(global.fireType,pt_shape_square);
part_type_scale(global.fireType,0.1,0.1);
part_type_size(global.fireType,0.5,1,-0.01,0);
part_type_orientation(global.fireType,0,360,0,0,true);
part_type_colour3(global.fireType,red,yellow,c_orange);
part_type_life(global.fireType,(15*quality)+5,(15*quality)+5);

global.fireExplodeSystem = part_system_create();
global.fireExplodeType = part_type_create();

part_type_shape(global.fireExplodeType,pt_shape_square);
part_type_scale(global.fireExplodeType,0.1,0.1);
part_type_size(global.fireExplodeType,0.5,1,-0.01,0);
part_type_orientation(global.fireExplodeType,0,360,0,0,true);
part_type_speed(global.fireExplodeType,0,1,0,0);
part_type_direction(global.fireExplodeType,0,360,0,0);
part_type_colour3(global.fireExplodeType,red,yellow,c_orange);
part_type_life(global.fireExplodeType,(15*quality)+5,(15*quality)+5);