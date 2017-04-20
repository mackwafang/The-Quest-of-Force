///hitScan(obj,att range)
obj = argument0;
range = argument1;

for(i = 0; i < range; i += 2){
    if(position_meeting(x+lengthdir_x(i,range),y+lengthdir_y(i,range),obj)){
        return true;
    }
}
return false;
