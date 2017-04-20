///inArray(array,key)
/*Check entire array to see if a key is in it, return true if there is, false otherwise*/
array = argument0;
key = argument1;
length = array_length_1d(array);
for(i = 0; i < length; i++){
    if(array[i] == key) {return true}
}
return false;