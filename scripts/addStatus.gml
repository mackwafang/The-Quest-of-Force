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
        case "ice":
            type = 1;
            break;
        case "poison":
            type = 2;
            break;
        case "bleed":
            type = 3;
            break;
    }
}
for(var i = 0; i < array_height_2d(statusChange); i++){
    if(statusChange[i,0] == -1){
        statusChange[i,0] = type;
        statusChange[i,1] = time;
        statusChange[i,2] = strength;
        return 0;
    }
}