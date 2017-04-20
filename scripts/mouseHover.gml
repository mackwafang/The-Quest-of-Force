///mouseHover(x1,y1,x2,y2)
/*

Checks when mouse is between (x1,y1) and (x2,y2)
return true if it does

*/
var x1, x2, y1, y2;
x1 = argument0
y1 = argument1
x2 = argument2
y2 = argument3
if (mouse_x >= x1 and mouse_x <= x2) or (mouse_x <= x1 and mouse_x >= x2){
    if (mouse_y >= y1 and mouse_y <= y2) or (mouse_y <= y1 and mouse_y >= y2){
        return true;
    }
}
else{
    return false;
}