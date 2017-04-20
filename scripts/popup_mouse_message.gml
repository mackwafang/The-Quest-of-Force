///popup_mouse_message(x1,y1,x2,y2,debug)
/*

Checks when mouse is between (x1,y1) and (x2,y2)
return true if it does
*/
var x1, x2, y1, y2, debug;
x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
debug = argument4;
if ((mouse_x >= x1 && mouse_x <= x2)){
    if ((mouse_y >= y1 && mouse_y <= y2)){
        return true;
    }
}
else{
    return false;
}
if(debug){
    with(event_perform(ev_draw,0)){
        draw_rectangle(x1*windowXRatio,y1*windowYRatio,x2*windowXRatio,y2*windowYRatio,false);
    }
}