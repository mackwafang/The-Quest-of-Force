///addBuffList(name,sprite,description,time)
var n = argument[0];
var s = argument[1];
var d = argument[2];
var t = argument[3];
var l = buffListLength();
if (l < buffListSize) {
    buffList[l,buffListData.name] = n;
    buffList[l,buffListData.sprite] = s;
    buffList[l,buffListData.description] = d;
    buffList[l,buffListData.time] = t;
}