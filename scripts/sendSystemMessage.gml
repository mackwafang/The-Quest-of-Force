///sendSystemMessage(string)
if(instance_exists(obj_control)){
    if(systemMessageSize() >= 10){
        //obj_control.systemMessageTimer = 0;
        ds_queue_enqueue(global.systemMessageQueue,argument0);
    }
    for(i = 0; i < global.systemMessageLength; i++){
        if(global.systemMessage[i,0] == ""){
            global.systemMessage[i,0] = argument0;
            return 0;
        }
    }
}
return 0;