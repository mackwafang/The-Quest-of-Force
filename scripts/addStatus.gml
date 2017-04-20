///addStatus(type, time, strength)
var type = argument[0];
var time = argument[1];
var strength = argument[2];
if(is_string(type)){
    var typeString = string_lower(type);
    switch(typeString){
        case "fire":
            type = 0;
            break;
    }
}
switch(type){
    case 0:
        part_type_shape(statusType,pt_shape_square);
        part_type_scale(statusType,0.1,0.1);
        part_type_size(statusType,0.5,1,-0.01,0);
        part_type_orientation(statusType,0,360,0,0,true);
        part_type_colour3(statusType,red,yellow,c_orange);
        part_type_alpha2(statusType,1,0);
        part_type_life(statusType,30,30);
        break;
}
for(var i = 0; i < array_height_2d(statusChange); i++){
    if(statusChange[i,0] == -1){
        statusChange[i,0] = type;
        statusChange[i,1] = time;
        statusChange[i,2] = strength;
        return 0;
    }
}