///dungeonSize()
var size = 0;
for(var i = 0; i < global.dungeonW; i++){
    for(var j = 0; j < global.dungeonH; j++){
        if(global.dungeon[i,j] != 15){
            size++;
        }
        if(is_array(global.cells)){
            if(global.cells[(i*global.dungeonW)+j] == -2){
                global.dungeon[i,j] = 15;
            }
        }
    }
}
return size;