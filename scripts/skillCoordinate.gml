//sub index 0: x
//sub index 1: y
for(i = 0; i < array_height_2d(global.skill); i++) {
    global.skillCoord[i,0] = -1;
    global.skillCoord[i,1] = -1;
}
for(i = 0; i < 4; i ++){
    global.skillCoord[i,0] = 1;
    global.skillCoord[i,1] = (i+1)*2;
    global.skillCoord[i+4,0] = 3;
    global.skillCoord[i+4,1] = (i+1)*2;
    global.skillCoord[i+8,0] = 9;
    global.skillCoord[i+8,1] = (i+1)*2;
    global.skillCoord[i+12,0] = 13;
    global.skillCoord[i+12,1] = (i+1)*2;
    global.skillCoord[i+43,0] = 7;
    global.skillCoord[i+43,1] = (i+1)*2;
    /************ attack skill ************/
    switch(global.class){
    case 0: global.skillCoord[i+20,0] = 27;
            global.skillCoord[i+20,1] = (i+1)*2;
            break;
    case 1: global.skillCoord[i+24,0] = 27;
            global.skillCoord[i+24,1] = (i+1)*2;
            break;
    case 2: global.skillCoord[i+28,0] = 27;
            global.skillCoord[i+28,1] = (i+1)*2;
            break;
    case 3: global.skillCoord[i+32,0] = 27;
            global.skillCoord[i+32,1] = (i+1)*2;
            break;
    }
}
/************ MP Gen ************/
global.skillCoord[16,0] = 11;
global.skillCoord[16,1] = 4;
global.skillCoord[17,0] = 11;
global.skillCoord[17,1] = 6;
global.skillCoord[18,0] = 11;
global.skillCoord[18,1] = 8;
/************ ignore def ************/
global.skillCoord[19,0] = 13;
global.skillCoord[19,1] = 10;
/************ HP, SP STEAL ************/
global.skillCoord[48,0] = 9;
global.skillCoord[48,1] = 10;
global.skillCoord[49,0] = 11;
global.skillCoord[49,1] = 10;

global.skillCoord[50,0] = 9;
global.skillCoord[50,1] = 11.5;
global.skillCoord[51,0] = 11;
global.skillCoord[51,1] = 11.5;
/************ Criticals ************/
global.skillCoord[36,0] = 1;
global.skillCoord[36,1] = 10;
global.skillCoord[37,0] = 3;
global.skillCoord[37,1] = 10;
global.skillCoord[38,0] = 5;
global.skillCoord[38,1] = 10;
/************ HP Gen ************/
global.skillCoord[47,0] = 5;
global.skillCoord[47,1] = 4;
global.skillCoord[39,0] = 5;
global.skillCoord[39,1] = 6;
global.skillCoord[40,0] = 5;
global.skillCoord[40,1] = 8;
/************ Aux Skills ************/
global.skillCoord[41,0] = 1;
global.skillCoord[41,1] = 11.5;
global.skillCoord[42,0] = 3;
global.skillCoord[42,1] = 11.5;
global.skillCoord[52,0] = 1;
global.skillCoord[52,1] = 13;
