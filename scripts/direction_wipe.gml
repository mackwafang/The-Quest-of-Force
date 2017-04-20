///direction_wipe(display,actual,percent)
var fake, actual_min, actual_max, actual, percent_mod;
fake = argument[0];
actual = argument[1];
percent_mod = argument[2];

fake = fake+(sin(degtorad(actual-fake)))*percent_mod
return fake;