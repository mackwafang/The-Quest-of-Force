//skill_init
/*
INDEX - DESCRIPTION
0 - SKILL LEVEL
1 - SKILL MAX LEVEL
2 - REQUIRED LEVEL
3 - SKILL PREREQUISITE
4 - SKILL DESCRIPTION
5 - SKILL EFFECT
6 - SKILL SECONDARY EFFECT
7 - SKILL EFFECT INCREASE
*/
/************** SKILL 1 **************/
global.skill[0,0] = 0;
global.skill[0,1] = 10;
global.skill[0,2] = -1;
global.skill[0,3] = -1;
global.skill[0,4] = "[Physical Power I]#Physical attack +10, +5 each skill level";
global.skill[0,5] = 10;
global.skill[0,6] = 0;
global.skill[0,7] = 5;
/************** SKILL 2 **************/
global.skill[1,0] = 0;
global.skill[1,1] = 10;
global.skill[1,2] = 15;
global.skill[1,3] = 0;
global.skill[1,4] = "[Physical Power II]#Physical attack +15, +10 each skill level";
global.skill[1,5] = 15;
global.skill[1,6] = 0;
global.skill[1,7] = 10;
/************** SKILL 3 **************/
global.skill[2,0] = 0;
global.skill[2,1] = 7;
global.skill[2,2] = 30;
global.skill[2,3] = 1;
global.skill[2,4] = "[Physical Power III]#Physical attack +20, +15 each skill level";
global.skill[2,5] = 20;
global.skill[2,6] = 0;
global.skill[2,7] = 15;
/************** SKILL 4 **************/
global.skill[3,0] = 0;
global.skill[3,1] = 5;
global.skill[3,2] = 50;
global.skill[3,3] = 2;
global.skill[3,4] = "[Physical Power IV]#Physical attack +50, +25 each skill level";
global.skill[3,5] = 50;
global.skill[3,6] = 0;
global.skill[3,7] = 25;
/************** SKILL 5 **************/
global.skill[4,0] = 0;
global.skill[4,1] = 10;
global.skill[4,2] = -1;
global.skill[4,3] = -1;
global.skill[4,4] = "[Vitality I]#Hit Points +50, +20 each skill level";
global.skill[4,5] = 50;
global.skill[4,6] = 0;
global.skill[4,7] = 20;
/************** SKILL 6 **************/
global.skill[5,0] = 0;
global.skill[5,1] = 10;
global.skill[5,2] = 15;
global.skill[5,3] = 4;
global.skill[5,4] = "[Vitality II]#Hit Points +100, +40 each skill level";
global.skill[5,5] = 100;
global.skill[5,6] = 0;
global.skill[5,7] = 40;
/************** SKILL 7 **************/
global.skill[6,0] = 0;
global.skill[6,1] = 7;
global.skill[6,2] = 30;
global.skill[6,3] = 5;
global.skill[6,4] = "[Vitality III]#Hit Points +150, +60 each skill level";
global.skill[6,5] = 150;
global.skill[6,6] = 0;
global.skill[6,7] = 60;
/************** SKILL 8 **************/
global.skill[7,0] = 0;
global.skill[7,1] = 5;
global.skill[7,2] = 50;
global.skill[7,3] = 6;
global.skill[7,4] = "[Vitality IV]#Hit Points +125, +100 each skill level";
global.skill[7,5] = 300;
global.skill[7,6] = 0;
global.skill[7,7] = 100;
/************** SKILL 9 **************/
global.skill[8,0] = 0;
global.skill[8,1] = 10;
global.skill[8,2] = -1;
global.skill[8,3] = -1;
global.skill[8,4] = "[Mana Power I]#Magic Power +10, +5 each skill level. +50 SP";
global.skill[8,5] = 10;
global.skill[8,6] = 50;
global.skill[8,7] = 5;
/************** SKILL 10 **************/
global.skill[9,0] = 0;
global.skill[9,1] = 10;
global.skill[9,2] = 15;
global.skill[9,3] = 8;
global.skill[9,4] = "[Mana Power II]#Magic Power +15, +10 each skill level. +100 SP";
global.skill[9,5] = 15;
global.skill[9,6] = 100;
global.skill[9,7] = 10;
/************** SKILL 11 **************/
global.skill[10,0] = 0;
global.skill[10,1] = 7;
global.skill[10,2] = 30;
global.skill[10,3] = 9;
global.skill[10,4] = "[Mana Power III]#Magic Power +20, +15 each skill level. +250 SP";
global.skill[10,5] = 20;
global.skill[10,6] = 250;
global.skill[10,7] = 15;
/************** SKILL 12 **************/
global.skill[11,0] = 0;
global.skill[11,1] = 5;
global.skill[11,2] = 50;
global.skill[11,3] = 10;
global.skill[11,4] = "[Mana Power IV]#Magic Power +50, +25 each skill level. +500 SP";
global.skill[11,5] = 50;
global.skill[11,6] = 500;
global.skill[11,7] = 25;
/************** SKILL 13 **************/
global.skill[12,0] = 0;
global.skill[12,1] = 10;
global.skill[12,2] = -1;
global.skill[12,3] = -1;
global.skill[12,4] = "[Lucky I]#Luck +1, +1 each skill level.";
global.skill[12,5] = 1;
global.skill[12,6] = 0;
global.skill[12,7] = 1;
/************** SKILL 14 **************/
global.skill[13,0] = 0;
global.skill[13,1] = 10;
global.skill[13,2] = 15;
global.skill[13,3] = 12;
global.skill[13,4] = "[Lucky II]#Luck +2, +2 each skill level.";
global.skill[13,5] = 2;
global.skill[13,6] = 0;
global.skill[13,7] = 2;
/************** SKILL 15 **************/
global.skill[14,0] = 0;
global.skill[14,1] = 7;
global.skill[14,2] = 30;
global.skill[14,3] = 13;
global.skill[14,4] = "[Lucky III]#Luck +3, +3 each skill level.";
global.skill[14,5] = 3;
global.skill[14,6] = 0;
global.skill[14,7] = 3;
/************** SKILL 16 **************/
global.skill[15,0] = 0;
global.skill[15,1] = 5;
global.skill[15,2] = 50;
global.skill[15,3] = 14;
global.skill[15,4] = "[Lucky IV]#Luck +5, +5 each skill level.";
global.skill[15,5] = 5;
global.skill[15,6] = 0;
global.skill[15,7] = 5;
/************** SKILL 17 **************/
global.skill[16,0] = 0;
global.skill[16,1] = 3;
global.skill[16,2] = 25;
global.skill[16,3] = 8;
global.skill[16,4] = "[Mana Gatherer]#Mana Generation +5 per Level";
global.skill[16,5] = 0;
global.skill[16,6] = 0;
global.skill[16,7] = 5;
/************** SKILL 18 **************/
global.skill[17,0] = 0;
global.skill[17,1] = 3;
global.skill[17,2] = 30;
global.skill[17,3] = 16;
global.skill[17,4] = "[Mana Collector]#Mana Generation +5 per Level";
global.skill[17,5] = 0;
global.skill[17,6] = 0;
global.skill[17,7] = 5;
/************** SKILL 19 **************/
global.skill[18,0] = 0;
global.skill[18,1] = 3;
global.skill[18,2] = 40;
global.skill[18,3] = 17;
global.skill[18,4] = "[Unlimited Mana]#Mana Generation +5 per Level, +2 per Level Generation Speed";
global.skill[18,5] = 0;
global.skill[18,6] = 2;
global.skill[18,7] = 5;
/************** SKILL 20 **************/
global.skill[19,0] = 0;
global.skill[19,1] = 10;
global.skill[19,2] = 50;
global.skill[19,3] = -1;
global.skill[19,4] = "[Armour Peircing] Ignore enemies defence on attacks.";
global.skill[19,5] = 1;
global.skill[19,6] = 0;
global.skill[19,7] = 0.05;
        /************** FORCE MASTER: SKILL 21 **************/
        global.skill[20,0] = 0;
        global.skill[20,1] = 10;
        global.skill[20,2] = 0;
        global.skill[20,3] = -1;
        global.skill[20,4] = "[Heavy Impact]#Force does +10% damage per level for 4 seconds";
        global.skill[20,5] = 1;
        global.skill[20,6] = 5;
        global.skill[20,7] = 0.1;
        /************** SKILL 22 **************/
        global.skill[21,0] = 0;
        global.skill[21,1] = 5;
        global.skill[21,2] = 15;
        global.skill[21,3] = 20;
        global.skill[21,4] = "[Piecing Force]#Force will now pierce multiple enemies";
        global.skill[21,5] = 1;
        global.skill[21,6] = 20;
        global.skill[21,7] = 1;
        /************** SKILL 23 **************/
        global.skill[22,0] = 0;
        global.skill[22,1] = 10;
        global.skill[22,2] = 25;
        global.skill[22,3] = 21;
        global.skill[22,4] = "[Swarm]#Summon a large set of forces and attack all enemies";
        global.skill[22,5] = 100;
        global.skill[22,6] = 90;
        global.skill[22,7] = 10;
        /************** SKILL 24 **************/
        global.skill[23,0] = 0;
        global.skill[23,1] = 1;
        global.skill[23,2] = 50;
        global.skill[23,3] = 22;
        global.skill[23,4] = "[Escort] Summons 10 Forces that surrounds you and attack enemies nearby.";
        global.skill[23,5] = 10;
        global.skill[23,6] = 150;
        global.skill[23,7] = 0;
        /************** SWORDMAN: SKILL 25 **************/
        global.skill[24,0] = 0;
        global.skill[24,1] = 10;
        global.skill[24,2] = 0;
        global.skill[24,3] = -1;
        global.skill[24,4] = "[Enhanced Sword]#Normal and Special Attack now do 10% per level for 4 seconds";
        global.skill[24,5] = 1;
        global.skill[24,6] = 5;
        global.skill[24,7] = 0.1;
        /************** SKILL 26 **************/
        global.skill[25,0] = 0;
        global.skill[25,1] = 5;
        global.skill[25,2] = 15;
        global.skill[25,3] = 24;
        global.skill[25,4] = "[Lighting Fast]#Attack speed +1 per level, but -5% attack power";
        global.skill[25,5] = 0;
        global.skill[25,6] = 20;
        global.skill[25,7] = 1;
        /************** SKILL 27 **************/
        global.skill[26,0] = 0;
        global.skill[26,1] = 10;
        global.skill[26,2] = 25;
        global.skill[26,3] = 25;
        global.skill[26,4] = "[Weapon Summon] Summons weapons and attack the nearest enemy";
        global.skill[26,5] = 0;
        global.skill[26,6] = 90;
        global.skill[26,7] = 0.1;
        /************* SKILL 28 **************/
        global.skill[27,0] = 0;
        global.skill[27,1] = 1;
        global.skill[27,2] = 50;
        global.skill[27,3] = 26;
        global.skill[27,4] = "[Shadow Strike]#Attack all enemies on screen, at a cost of HP";
        global.skill[27,5] = 5;
        global.skill[27,6] = 150;
        global.skill[27,7] = 0;
        /************** WAZARD: SKILL 29 **************/
        global.skill[28,0] = 0;
        global.skill[28,1] = 10;
        global.skill[28,2] = 0;
        global.skill[28,3] = -1;
        global.skill[28,4] = "[Healing Circle]#Create a healing circle that heals 0.5% of HP per level every half second and deal damage to enemies";
        global.skill[28,5] = 0;
        global.skill[28,6] = 5;
        global.skill[28,7] = 0.5;
        /************** SKILL 30 **************/
        global.skill[29,0] = 0;
        global.skill[29,1] = 5;
        global.skill[29,2] = 15;
        global.skill[29,3] = 28;
        global.skill[29,4] = "[Magic-infused Staff]#Melee attack add magic damage. Greatly increases SP regeneration";
        global.skill[29,5] = 0;
        global.skill[29,6] = 20;
        global.skill[29,7] = 10;
        /************** SKILL 31 **************/
        global.skill[30,0] = 0;
        global.skill[30,1] = 10;
        global.skill[30,2] = 25;
        global.skill[30,3] = 29;
        global.skill[30,4] = "[Ice Spike]#Summon icicles that deal high damage to enemies";
        global.skill[30,5] = 0;
        global.skill[30,6] = 90;
        global.skill[30,7] = 0.1;
        /************* SKILL 32 **************/
        global.skill[31,0] = 0;
        global.skill[31,1] = 1;
        global.skill[31,2] = 50;
        global.skill[31,3] = 30;
        global.skill[31,4] = "[Shocking Strikea]#Strike enemies that come close with lighting, surviving enemies will be set on fire";
        global.skill[31,5] = 0.3;
        global.skill[31,6] = 150;
        global.skill[31,7] = 0;
        /************** SHARPSHOOTER: SKILL 33 **************/
        global.skill[32,0] = 0;
        global.skill[32,1] = 10;
        global.skill[32,2] = 0;
        global.skill[32,3] = -1;
        global.skill[32,4] = "[]";
        global.skill[32,5] = 1;
        global.skill[32,6] = 5;
        global.skill[32,7] = 0.1;
        /************** SKILL 34 **************/
        global.skill[33,0] = 0;
        global.skill[33,1] = 5;
        global.skill[33,2] = 15;
        global.skill[33,3] = 32;
        global.skill[33,4] = "[]";
        global.skill[33,5] = 5;
        global.skill[33,6] = 20;
        global.skill[33,7] = 5;
        /************** SKILL 35 **************/
        global.skill[34,0] = 0;
        global.skill[34,1] = 10;
        global.skill[34,2] = 25;
        global.skill[34,3] = 33;
        global.skill[34,4] = "[]";
        global.skill[34,5] = 2;
        global.skill[34,6] = 90;
        global.skill[34,7] = 0.2;
        /************* SKILL 36 **************/
        global.skill[35,0] = 0;
        global.skill[35,1] = 1;
        global.skill[35,2] = 50;
        global.skill[35,3] = 34;
        global.skill[35,4] = "[]";
        global.skill[35,5] = 5;
        global.skill[35,6] = 150;
        global.skill[35,7] = 0;
        
/************** SKILL 37 **************/
global.skill[36,0] = 0;
global.skill[36,1] = 10;
global.skill[36,2] = 25;
global.skill[36,3] = -1;
global.skill[36,4] = "[Weakness Analysis]#Increase critical rate by 5% per level";
global.skill[36,5] = 5;
global.skill[36,6] = 0;
global.skill[36,7] = 5;
/************** SKILL 38 **************/
global.skill[37,0] = 0;
global.skill[37,1] = 10;
global.skill[37,2] = 30;
global.skill[37,3] = 36;
global.skill[37,4] = "[Vital Strike]#Increase critical damage by 10 per level";
global.skill[37,5] = 10;
global.skill[37,6] = 0;
global.skill[37,7] = 10;
/************** SKILL 39 **************/
global.skill[38,0] = 0;
global.skill[38,1] = 10;
global.skill[38,2] = 40;
global.skill[38,3] = 37;
global.skill[38,4] = "[Vital Strike II]#Increase critical damage by 50 per level";
global.skill[38,5] = 50;
global.skill[38,6] = 0;
global.skill[38,7] = 50;
/************** SKILL 40 **************/
global.skill[39,0] = 0;
global.skill[39,1] = 3;
global.skill[39,2] = 30;
global.skill[39,3] = 47;
global.skill[39,4] = "[Generation II]#+5 HP generation per second per level";
global.skill[39,5] = 0;
global.skill[39,6] = 0;
global.skill[39,7] = 5;
/************** SKILL 41 **************/
global.skill[40,0] = 0;
global.skill[40,1] = 3;
global.skill[40,2] = 40;
global.skill[40,3] = 39;
global.skill[40,4] = "[Generation III]#+5 HP generation per second per level";
global.skill[40,5] = 0;
global.skill[40,6] = 0;
global.skill[40,7] = 5;
/************** SKILL 42 **************/
global.skill[41,0] = 0;
global.skill[41,1] = 10;
global.skill[41,2] = 20;
global.skill[41,3] = -1;
global.skill[41,4] = "[Hermes' Boots]#+0.1 Movement speed per level";
global.skill[41,5] = 0;
global.skill[41,6] = 0;
global.skill[41,7] = 0.1;
/************** SKILL 43 **************/
global.skill[42,0] = 0;
global.skill[42,1] = 3;
global.skill[42,2] = 40;
global.skill[42,3] = 41;
global.skill[42,4] = "[Rapid Strikes]#+1 Attack Speed per level";
global.skill[42,5] = 0;
global.skill[42,6] = 0;
global.skill[42,7] = 1;
/************** SKILL 44 **************/
global.skill[43,0] = 0;
global.skill[43,1] = 10;
global.skill[43,2] = -1;
global.skill[43,3] = -1;
global.skill[43,4] = "[Defense I]#Stamina +10, +5 each skill level";
global.skill[43,5] = 10;
global.skill[43,6] = 0;
global.skill[43,7] = 5;
/************** SKILL 45 **************/
global.skill[44,0] = 0;
global.skill[44,1] = 10;
global.skill[44,2] = 15;
global.skill[44,3] = 43;
global.skill[44,4] = "[Defense II]#Stamina  +30, +20 each skill level";
global.skill[44,5] = 30;
global.skill[44,6] = 0;
global.skill[44,7] = 20;
/************** SKILL 46 **************/
global.skill[45,0] = 0;
global.skill[45,1] = 7;
global.skill[45,2] = 30;
global.skill[45,3] = 44;
global.skill[45,4] = "[Defense III]#Stamina  +60, +30 each skill level";
global.skill[45,5] = 60;
global.skill[45,6] = 0;
global.skill[45,7] = 30;
/************** SKILL 47 **************/
global.skill[46,0] = 0;
global.skill[46,1] = 5;
global.skill[46,2] = 50;
global.skill[46,3] = 45;
global.skill[46,4] = "[Defense IV]#Stamina  +100, +50 each skill level";
global.skill[46,5] = 100;
global.skill[46,6] = 0;
global.skill[46,7] = 50;
/************** SKILL 48 **************/
global.skill[47,0] = 0;
global.skill[47,1] = 3;
global.skill[47,2] = 5;
global.skill[47,3] = 4;
global.skill[47,4] = "[Generation I]#+5 HP generation per second per level";
global.skill[47,5] = 0;
global.skill[47,6] = 0;
global.skill[47,7] = 5;
/************** SKILL 49 **************/
global.skill[48,0] = 0;
global.skill[48,1] = 10;
global.skill[48,2] = 30;
global.skill[48,3] = -1;
global.skill[48,4] = "[Vampire]#For every special attack, there is a 10% chance to convert 1% of damage done to HP";
global.skill[48,5] = 0;
global.skill[48,6] = 10;
global.skill[48,7] = 1;
/************** SKILL 50 **************/
global.skill[49,0] = 0;
global.skill[49,1] = 10;
global.skill[49,2] = 30;
global.skill[49,3] = -1;
global.skill[49,4] = "[Energy Sap]#For every normal attack, there is a 10% chance to convert 1% of damage done to SP";
global.skill[49,5] = 0;
global.skill[49,6] = 10;
global.skill[49,7] = 1;
/************** SKILL 51 **************/
global.skill[50,0] = 0;
global.skill[50,1] = 10;
global.skill[50,2] = 60;
global.skill[50,3] = 48;
global.skill[50,4] = "[Haunting Drain]#Increase [Vampire] probability by 2% per level";
global.skill[50,5] = 0;
global.skill[50,6] = 0;
global.skill[50,7] = 2;
/************** SKILL 52 **************/
global.skill[51,0] = 0;
global.skill[51,1] = 10;
global.skill[51,2] = 60;
global.skill[51,3] = 49;
global.skill[51,4] = "[Continuous Sap]#Increase [Energy Sap] probability by 2% per level";
global.skill[51,5] = 0;
global.skill[51,6] = 0;
global.skill[51,7] = 2;
/************** SKILL 53 **************/
global.skill[52,0] = 0;
global.skill[52,1] = 10;
global.skill[52,2] = 30;
global.skill[52,3] = -1;
global.skill[52,4] = "[Item Attraction]#Items nearby will be dragged to you";
global.skill[52,5] = 0;
global.skill[52,6] = 0;
global.skill[52,7] = 16;
