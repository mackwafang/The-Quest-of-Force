///makeWalls(parent)
var r0, c0, v, w;
var parent = argument0;
for(r = 0; r < global.dungeonH; r++){
    for(c = 0; c < global.dungeonW; c ++){
        v = (r*global.dungeonW)+c;
        w = parent[v];
        if(w >= 0){
            r0 = w div global.dungeonW;
            c0 = w mod global.dungeonW;
            if(c0 == c+1){
                global.dungeon[r,c] &= ~east;
                global.dungeon[r0,c0] &= ~west;
            }
            if(c0 == c-1){
                global.dungeon[r,c] &= ~west;
                global.dungeon[r0,c0] &= ~east;
            }
            if(r0 == r-1){
                global.dungeon[r,c] &= ~north;
                global.dungeon[r0,c0] &= ~south;
            }
            if(r0 == r+1){
                global.dungeon[r,c] &= ~south;
                global.dungeon[r0,c0] &= ~north;
            }
        }
    }
}