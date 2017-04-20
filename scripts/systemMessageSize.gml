///systemMessageSize()
var count = 0;;
for(i = 0; i < global.systemMessageLength; i++){
    if(global.systemMessage[i,0] != ""){
        count++;
    }
}
return count;