///calculateTotalXP(final level)
var newValue = 100;
var count = 0;
var finalLevel = argument[0];
for(i = 1; i < finalLevel; i++){
    count += newValue;
    //newValue = ceil(newValue*1.5);
    newValue = ceil(i*20);
}
return count;
