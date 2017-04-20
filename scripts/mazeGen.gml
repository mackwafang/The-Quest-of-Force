///mazeGen
var visited, parent;
for(var i = 0; i < global.dungeonW*global.dungeonH; i++) {
    visited[i] = false;
    parent[i] = -2;
}
var trail = ds_stack_create();
var unvisited = ds_list_create();
var neighbors;

visited[start] = true;
parent[start] = -1;
ds_stack_push(trail,start);
while(rooms > 0 && !ds_stack_empty(trail)){
    print("> Generating");
    neighbors = adjacent(start);
    if(irandom(10) > 3 && unvisitedNeighbors(visited,neighbors)){
        print("> Going to next tile");
        for(var u = 0; u < ds_list_size(neighbors); u++){
            if(!visited[ds_list_find_value(neighbors,u)]){
                ds_list_add(unvisited,ds_list_find_value(neighbors,u));
            }
        }
        var w = ds_list_find_value(unvisited,max(irandom(ds_list_size(unvisited))-1,0));
        print("> Went to "+string(w));
        ds_list_clear(unvisited);
        visited[w] = true;
        parent[w] = start;
        ds_stack_push(trail,w);
        rooms --;
        start = w;
    }
    else{
        start = ds_stack_pop(trail);
    }
    
}
var size = 0;
for(var i = 0; i < global.dungeonW*global.dungeonH; i++){
    if(visited[i]){
        
    }
}
finish = true;
return parent;