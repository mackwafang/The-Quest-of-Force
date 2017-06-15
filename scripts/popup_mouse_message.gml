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
if ((window_view_mouse_get_x(0) >= x1 && window_view_mouse_get_x(0) <= x2)){
    if ((window_view_mouse_get_y(0) >= y1 && window_view_mouse_get_y(0) <= y2)){
        return true;
    }
}
else{
    return false;
}
if(debug){
    with(event_perform(ev_draw,0)){
        draw_rectangle_colour(x1*windowXRatio,y1*windowYRatio,x2*windowXRatio,y2*windowYRatio,yellow,yellow,yellow,yellow,false);
    }
}