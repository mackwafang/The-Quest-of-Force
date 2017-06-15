global.electricSystem = part_system_create();
global.electricType = part_type_create();

part_type_shape(global.electricType,pt_shape_spark);
part_type_scale(global.electricType,1,0.2);
part_type_size(global.electricType,0.5,1,-0.01,0);
part_type_colour3(global.electricType,white,blue,$82004B);
part_type_life(global.electricType,15,15);