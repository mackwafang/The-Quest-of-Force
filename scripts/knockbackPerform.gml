///knockbackPerform()
if(canMove && kbTime > 0){
    if(place_free(x+lengthdir_x(kbPower,kbDirection),y+lengthdir_y(kbPower,kbDirection))){
        canMove = false;
        kbTime --;
        direction = kbDirection;
        speed = kbPower;
    }
}
else{
    canMove = true;
}