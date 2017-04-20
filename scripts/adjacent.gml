///adjacent(current)
current = argument0;
var adj = ds_list_create();
var row = current div global.dungeonW;
var col = current mod global.dungeonW;
print("-> Checking adjacent");
if(row+1 < global.dungeonH){
    print("--> Checking down");
    ds_list_add(adj,((row+1)*global.dungeonW)+col);
    if(currentDir == south && irandom(10) < 3){
        repeat(3) ds_list_add(adj,((row+1)*global.dungeonW)+col);
        return adj;
    }
    currentDir = south;
}
if(col-1 >= 0){
    print("--> Checking left");
    ds_list_add(adj,(row*global.dungeonW)+(col-1));
    if(currentDir == east && irandom(10) < 3){
        repeat(3) ds_list_add(adj,(row*global.dungeonW)+(col-1));
        return adj;
    }
    currentDir = east;
}
if(row-1 >= 0){
    print("--> Checking up");
    ds_list_add(adj,((row-1)*global.dungeonW)+col);
    if(currentDir == north && irandom(10) < 3){
        repeat(3) ds_list_add(adj,((row-1)*global.dungeonW)+col);
        return adj;
    }
    currentDir = north;
}
if(col+1 < global.dungeonW){
    print("--> Checking right");
    ds_list_add(adj,(row*global.dungeonW)+(col+1));
    if(currentDir == west && irandom(10) < 3){
        repeat(3) ds_list_add(adj,(row*global.dungeonW)+(col+1));
        return adj;
    }
    currentDir = west;
}
return adj;