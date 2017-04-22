///inViewRange(from,to,angle)
from = argument0;
to = argument1;
range = argument2;

var x1, y1, x2, y2, adist, bdist;
x1 = to.x-from.x;
y1 = to.y-from.y;
x2 = lengthdir_x(1,from.image_angle);
y2 = lengthdir_y(1,from.image_angle);
adist = sqrt(sqr(x1)+sqr(y1));
bdist = sqrt(sqr(x2)+sqr(y2));

angle = arccos(dot_product(x1,y1,x2,y2)/(adist*bdist))*(180/pi);

if(angle < range) {
    return true;
}
return false;
/*
minRange = from.image_angle+argument2;
maxRange = from.image_angle+argument3;

if(from.direction == 0 && to.direction == 180) {return true;}
dir = point_direction(from.x,from.y,to.x,to.y);
if(minRange > maxRange){
    return (minRange > dir);
}
return (minRange < dir && maxRange > dir);
