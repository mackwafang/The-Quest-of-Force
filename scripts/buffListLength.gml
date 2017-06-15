///buffListLength()
/*
return how many buffs there are in the array, return null other wise;
*/
for (var i = 0; i < buffListSize; i++) {
    if (buffList[i,buffListData.name] == "") {
        return i;
    }
}
return null;
