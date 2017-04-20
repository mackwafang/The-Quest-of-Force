///unvisitedNeighbors(visit,nieghbors)
var visit = argument0;
var n = argument1;
var u = ds_list_size(n);
print("-> Checking unvisited neighbors");
for(var i = 0; i < ds_list_size(n); i++){
    //print("--> Checking "+string(ds_list_find_value(n,i)));
    if(visit[ds_list_find_value(n,i)]){
        //print("---> Visited");
        u--;
    }
    print("--> Next");
}
if(u == 0){
    return false;
}
return true;