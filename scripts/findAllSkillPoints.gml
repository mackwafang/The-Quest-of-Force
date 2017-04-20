var points = 0;
for(i = 0; i < array_height_2d(global.skill); i++){
    points += global.skill[i,1];
}
points -= 66;
print(points);