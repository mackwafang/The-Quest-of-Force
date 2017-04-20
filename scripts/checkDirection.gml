///checkDirection(from,to,min,max)
from = argument[0];
to = argument[1];
minRange = argument[2];
maxRange = argument[3];


range = point_direction(from.x,from.y,to.x,to.y);
print(range);
if(minRange < maxRange){
    return (range <= minRange && range >= maxRange);
}
else{
    return (range <= maxRange && range >= minRange);
}
