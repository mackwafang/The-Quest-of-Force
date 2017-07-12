global.iceSystem = part_system_create();
global.iceType = part_type_create();

part_type_shape(global.iceType,pt_shape_square);
part_type_scale(global.iceType,0.1,0.1);
part_type_size(global.iceType,0.5,1,-0.01,0);
part_type_orientation(global.iceType,0,360,0,0,false);
part_type_colour3(global.iceType,white,aqua,blue);
part_type_life(global.iceType,15*quality,15*quality);