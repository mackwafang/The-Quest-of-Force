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
global.skill[0,skillData.level] = 0;
global.skill[0,skillData.maxLevel] = 10;
global.skill[0,skillData.requiredLevel] = -1;
global.skill[0,skillData.preReq] = -1;
global.skill[0,skillData.info] = "[Physical Power I]#Physical attack +10, +5 each skill level";
global.skill[0,skillData.primaryEffect] = 10;
global.skill[0,skillData.secondaryEffect] = 0;
global.skill[0,skillData.increaseEffect] = 5;
/************** SKILL 2 **************/
global.skill[1,skillData.level] = 0;
global.skill[1,skillData.maxLevel] = 10;
global.skill[1,skillData.requiredLevel] = 15;
global.skill[1,skillData.preReq] = 0;
global.skill[1,skillData.info] = "[Physical Power II]#Physical attack +15, +10 each skill level";
global.skill[1,skillData.primaryEffect] = 15;
global.skill[1,skillData.secondaryEffect] = 0;
global.skill[1,skillData.increaseEffect] = 10;
/************** SKILL 3 **************/
global.skill[2,skillData.level] = 0;
global.skill[2,skillData.maxLevel] = 10;
global.skill[2,skillData.requiredLevel] = 30;
global.skill[2,skillData.preReq] = 1;
global.skill[2,skillData.info] = "[Physical Power III]#Physical attack +20, +15 each skill level";
global.skill[2,skillData.primaryEffect] = 20;
global.skill[2,skillData.secondaryEffect] = 0;
global.skill[2,skillData.increaseEffect] = 15;
/************** SKILL 4 **************/
global.skill[3,skillData.level] = 0;
global.skill[3,skillData.maxLevel] = 15;
global.skill[3,skillData.requiredLevel] = 50;
global.skill[3,skillData.preReq] = 2;
global.skill[3,skillData.info] = "[Physical Power IV]#Physical attack +50, +25 each skill level";
global.skill[3,skillData.primaryEffect] = 50;
global.skill[3,skillData.secondaryEffect] = 0;
global.skill[3,skillData.increaseEffect] = 25;
/************** SKILL 5 **************/
global.skill[4,skillData.level] = 0;
global.skill[4,skillData.maxLevel] = 10;
global.skill[4,skillData.requiredLevel] = -1;
global.skill[4,skillData.preReq] = -1;
global.skill[4,skillData.info] = "[Vitality I]#Hit Points +50, +20 each skill level";
global.skill[4,skillData.primaryEffect] = 50;
global.skill[4,skillData.secondaryEffect] = 0;
global.skill[4,skillData.increaseEffect] = 20;
/************** SKILL 6 **************/
global.skill[5,skillData.level] = 0;
global.skill[5,skillData.maxLevel] = 10;
global.skill[5,skillData.requiredLevel] = 15;
global.skill[5,skillData.preReq] = 4;
global.skill[5,skillData.info] = "[Vitality II]#Hit Points +100, +40 each skill level";
global.skill[5,skillData.primaryEffect] = 100;
global.skill[5,skillData.secondaryEffect] = 0;
global.skill[5,skillData.increaseEffect] = 40;
/************** SKILL 7 **************/
global.skill[6,skillData.level] = 0;
global.skill[6,skillData.maxLevel] = 10;
global.skill[6,skillData.requiredLevel] = 30;
global.skill[6,skillData.preReq] = 5;
global.skill[6,skillData.info] = "[Vitality III]#Hit Points +150, +60 each skill level";
global.skill[6,skillData.primaryEffect] = 150;
global.skill[6,skillData.secondaryEffect] = 0;
global.skill[6,skillData.increaseEffect] = 60;
/************** SKILL 8 **************/
global.skill[7,skillData.level] = 0;
global.skill[7,skillData.maxLevel] = 15;
global.skill[7,skillData.requiredLevel] = 50;
global.skill[7,skillData.preReq] = 6;
global.skill[7,skillData.info] = "[Vitality IV]#Hit Points +125, +100 each skill level";
global.skill[7,skillData.primaryEffect] = 300;
global.skill[7,skillData.secondaryEffect] = 0;
global.skill[7,skillData.increaseEffect] = 100;
/************** SKILL 9 **************/
global.skill[8,skillData.level] = 0;
global.skill[8,skillData.maxLevel] = 10;
global.skill[8,skillData.requiredLevel] = -1;
global.skill[8,skillData.preReq] = -1;
global.skill[8,skillData.info] = "[Mana Power I]#Magic Power +10, +5 each skill level. +50 SP";
global.skill[8,skillData.primaryEffect] = 10;
global.skill[8,skillData.secondaryEffect] = 50;
global.skill[8,skillData.increaseEffect] = 5;
/************** SKILL 10 **************/
global.skill[9,skillData.level] = 0;
global.skill[9,skillData.maxLevel] = 10;
global.skill[9,skillData.requiredLevel] = 15;
global.skill[9,skillData.preReq] = 8;
global.skill[9,skillData.info] = "[Mana Power II]#Magic Power +15, +10 each skill level. +100 SP";
global.skill[9,skillData.primaryEffect] = 15;
global.skill[9,skillData.secondaryEffect] = 100;
global.skill[9,skillData.increaseEffect] = 10;
/************** SKILL 11 **************/
global.skill[10,skillData.level] = 0;
global.skill[10,skillData.maxLevel] = 10;
global.skill[10,skillData.requiredLevel] = 30;
global.skill[10,skillData.preReq] = 9;
global.skill[10,skillData.info] = "[Mana Power III]#Magic Power +20, +15 each skill level. +250 SP";
global.skill[10,skillData.primaryEffect] = 20;
global.skill[10,skillData.secondaryEffect] = 250;
global.skill[10,skillData.increaseEffect] = 15;
/************** SKILL 12 **************/
global.skill[11,skillData.level] = 0;
global.skill[11,skillData.maxLevel] = 15;
global.skill[11,skillData.requiredLevel] = 50;
global.skill[11,skillData.preReq] = 10;
global.skill[11,skillData.info] = "[Mana Power IV]#Magic Power +50, +25 each skill level. +500 SP";
global.skill[11,skillData.primaryEffect] = 50;
global.skill[11,skillData.secondaryEffect] = 500;
global.skill[11,skillData.increaseEffect] = 25;
/************** SKILL 13 **************/
global.skill[12,skillData.level] = 0;
global.skill[12,skillData.maxLevel] = 10;
global.skill[12,skillData.requiredLevel] = -1;
global.skill[12,skillData.preReq] = -1;
global.skill[12,skillData.info] = "[Lucky I]#Luck +1, +1 each skill level.";
global.skill[12,skillData.primaryEffect] = 1;
global.skill[12,skillData.secondaryEffect] = 0;
global.skill[12,skillData.increaseEffect] = 1;
/************** SKILL 14 **************/
global.skill[13,skillData.level] = 0;
global.skill[13,skillData.maxLevel] = 10;
global.skill[13,skillData.requiredLevel] = 15;
global.skill[13,skillData.preReq] = 12;
global.skill[13,skillData.info] = "[Lucky II]#Luck +2, +2 each skill level.";
global.skill[13,skillData.primaryEffect] = 2;
global.skill[13,skillData.secondaryEffect] = 0;
global.skill[13,skillData.increaseEffect] = 2;
/************** SKILL 15 **************/
global.skill[14,skillData.level] = 0;
global.skill[14,skillData.maxLevel] = 10;
global.skill[14,skillData.requiredLevel] = 30;
global.skill[14,skillData.preReq] = 13;
global.skill[14,skillData.info] = "[Lucky III]#Luck +3, +3 each skill level.";
global.skill[14,skillData.primaryEffect] = 3;
global.skill[14,skillData.secondaryEffect] = 0;
global.skill[14,skillData.increaseEffect] = 3;
/************** SKILL 16 **************/
global.skill[15,skillData.level] = 0;
global.skill[15,skillData.maxLevel] = 15;
global.skill[15,skillData.requiredLevel] = 50;
global.skill[15,skillData.preReq] = 14;
global.skill[15,skillData.info] = "[Lucky IV]#Luck +5, +5 each skill level.";
global.skill[15,skillData.primaryEffect] = 5;
global.skill[15,skillData.secondaryEffect] = 0;
global.skill[15,skillData.increaseEffect] = 5;
/************** SKILL 17 **************/
global.skill[16,skillData.level] = 0;
global.skill[16,skillData.maxLevel] = 3;
global.skill[16,skillData.requiredLevel] = 25;
global.skill[16,skillData.preReq] = 8;
global.skill[16,skillData.info] = "[Mana Gatherer]#Mana Generation +5 per Level";
global.skill[16,skillData.primaryEffect] = 0;
global.skill[16,skillData.secondaryEffect] = 0;
global.skill[16,skillData.increaseEffect] = 5;
/************** SKILL 18 **************/
global.skill[17,skillData.level] = 0;
global.skill[17,skillData.maxLevel] = 3;
global.skill[17,skillData.requiredLevel] = 30;
global.skill[17,skillData.preReq] = 16;
global.skill[17,skillData.info] = "[Mana Collector]#Mana Generation +5 per Level";
global.skill[17,skillData.primaryEffect] = 0;
global.skill[17,skillData.secondaryEffect] = 0;
global.skill[17,skillData.increaseEffect] = 5;
/************** SKILL 19 **************/
global.skill[18,skillData.level] = 0;
global.skill[18,skillData.maxLevel] = 3;
global.skill[18,skillData.requiredLevel] = 40;
global.skill[18,skillData.preReq] = 17;
global.skill[18,skillData.info] = "[Unlimited Mana]#Mana Generation +5 per Level, +2 per Level Generation Speed";
global.skill[18,skillData.primaryEffect] = 0;
global.skill[18,skillData.secondaryEffect] = 2;
global.skill[18,skillData.increaseEffect] = 5;
/************** SKILL 20 **************/
global.skill[19,skillData.level] = 0;
global.skill[19,skillData.maxLevel] = 10;
global.skill[19,skillData.requiredLevel] = 50;
global.skill[19,skillData.preReq] = -1;
global.skill[19,skillData.info] = "[Armour Peircing] Ignore enemies defence on attacks.";
global.skill[19,skillData.primaryEffect] = 1;
global.skill[19,skillData.secondaryEffect] = 0;
global.skill[19,skillData.increaseEffect] = 0.05;
        /************** FORCE MASTER: SKILL 21 **************/
        global.skill[20,skillData.level] = 0;
        global.skill[20,skillData.maxLevel] = 10;
        global.skill[20,skillData.requiredLevel] = 0;
        global.skill[20,skillData.preReq] = -1;
        global.skill[20,skillData.info] = "[Heavy Impact]#Force damage increase by 25% damage per level";
        global.skill[20,skillData.primaryEffect] = 1;
        global.skill[20,skillData.secondaryEffect] = 5;
        global.skill[20,skillData.increaseEffect] = 0.25;
        /************** SKILL 22 **************/
        global.skill[21,skillData.level] = 0;
        global.skill[21,skillData.maxLevel] = 5;
        global.skill[21,skillData.requiredLevel] = 15;
        global.skill[21,skillData.preReq] = 20;
        global.skill[21,skillData.info] = "[Piecing Force]#Force will now pierce enemies based on skill level";
        global.skill[21,skillData.primaryEffect] = 1;
        global.skill[21,skillData.secondaryEffect] = 20;
        global.skill[21,skillData.increaseEffect] = 1;
        /************** SKILL 23 **************/
        global.skill[22,skillData.level] = 0;
        global.skill[22,skillData.maxLevel] = 10;
        global.skill[22,skillData.requiredLevel] = 25;
        global.skill[22,skillData.preReq] = 21;
        global.skill[22,skillData.info] = "[Swarm]#Summon a large set of forces and attack all enemies";
        global.skill[22,skillData.primaryEffect] = 100;
        global.skill[22,skillData.secondaryEffect] = 90;
        global.skill[22,skillData.increaseEffect] = 10;
        /************** SKILL 24 **************/
        global.skill[23,skillData.level] = 0;
        global.skill[23,skillData.maxLevel] = 1;
        global.skill[23,skillData.requiredLevel] = 50;
        global.skill[23,skillData.preReq] = 22;
        global.skill[23,skillData.info] = "[Escort] Summons 10 Forces that surrounds you and attack enemies nearby.";
        global.skill[23,skillData.primaryEffect] = 10;
        global.skill[23,skillData.secondaryEffect] = 150;
        global.skill[23,skillData.increaseEffect] = 0;
        /************** SWORDMAN: SKILL 25 **************/
        global.skill[24,skillData.level] = 0;
        global.skill[24,skillData.maxLevel] = 10;
        global.skill[24,skillData.requiredLevel] = 0;
        global.skill[24,skillData.preReq] = -1;
        global.skill[24,skillData.info] = "[Enhanced Sword]#Normal and Special Attack increase by 25% per level";
        global.skill[24,skillData.primaryEffect] = 1;
        global.skill[24,skillData.secondaryEffect] = 5;
        global.skill[24,skillData.increaseEffect] = 0.25;
        /************** SKILL 26 **************/
        global.skill[25,skillData.level] = 0;
        global.skill[25,skillData.maxLevel] = 5;
        global.skill[25,skillData.requiredLevel] = 15;
        global.skill[25,skillData.preReq] = 24;
        global.skill[25,skillData.info] = "[Lighting Fast]#Attack speed +1 per level, but -5% attack power";
        global.skill[25,skillData.primaryEffect] = 0;
        global.skill[25,skillData.secondaryEffect] = 20;
        global.skill[25,skillData.increaseEffect] = 1;
        /************** SKILL 27 **************/
        global.skill[26,skillData.level] = 0;
        global.skill[26,skillData.maxLevel] = 10;
        global.skill[26,skillData.requiredLevel] = 25;
        global.skill[26,skillData.preReq] = 25;
        global.skill[26,skillData.info] = "[Weapon Summon] Summons weapons that will inflict bleed and attack the nearest enemy";
        global.skill[26,skillData.primaryEffect] = 0;
        global.skill[26,skillData.secondaryEffect] = 90;
        global.skill[26,skillData.increaseEffect] = 0.1;
        /************* SKILL 28 **************/
        global.skill[27,skillData.level] = 0;
        global.skill[27,skillData.maxLevel] = 1;
        global.skill[27,skillData.requiredLevel] = 50;
        global.skill[27,skillData.preReq] = 26;
        global.skill[27,skillData.info] = "[Shadow Strike]#Attack all enemies, at a cost of HP";
        global.skill[27,skillData.primaryEffect] = 5;
        global.skill[27,skillData.secondaryEffect] = 150;
        global.skill[27,skillData.increaseEffect] = 0;
        /************** WAZARD: SKILL 29 **************/
        global.skill[28,skillData.level] = 0;
        global.skill[28,skillData.maxLevel] = 10;
        global.skill[28,skillData.requiredLevel] = 0;
        global.skill[28,skillData.preReq] = -1;
        global.skill[28,skillData.info] = "[Healing Circle]#Create a healing circle that heals 0.5% of HP per level every half second and deal damage to enemies";
        global.skill[28,skillData.primaryEffect] = 0;
        global.skill[28,skillData.secondaryEffect] = 5;
        global.skill[28,skillData.increaseEffect] = 0.5;
        /************** SKILL 30 **************/
        global.skill[29,skillData.level] = 0;
        global.skill[29,skillData.maxLevel] = 5;
        global.skill[29,skillData.requiredLevel] = 15;
        global.skill[29,skillData.preReq] = 28;
        global.skill[29,skillData.info] = "[Magic-infused Staff]#Melee attack adds magic damage. Greatly increases SP regeneration";
        global.skill[29,skillData.primaryEffect] = 0;
        global.skill[29,skillData.secondaryEffect] = 20;
        global.skill[29,skillData.increaseEffect] = 1;
        /************** SKILL 31 **************/
        global.skill[30,skillData.level] = 0;
        global.skill[30,skillData.maxLevel] = 10;
        global.skill[30,skillData.requiredLevel] = 25;
        global.skill[30,skillData.preReq] = 29;
        global.skill[30,skillData.info] = "[Ice Spike]#Summon icicles that deal high damage to enemies";
        global.skill[30,skillData.primaryEffect] = 0;
        global.skill[30,skillData.secondaryEffect] = 90;
        global.skill[30,skillData.increaseEffect] = 0.1;
        /************* SKILL 32 **************/
        global.skill[31,skillData.level] = 0;
        global.skill[31,skillData.maxLevel] = 1;
        global.skill[31,skillData.requiredLevel] = 50;
        global.skill[31,skillData.preReq] = 30;
        global.skill[31,skillData.info] = "[Shocking Strikea]#Strike enemies that come close with lighting, surviving enemies will be set on fire";
        global.skill[31,skillData.primaryEffect] = 0.3;
        global.skill[31,skillData.secondaryEffect] = 150;
        global.skill[31,skillData.increaseEffect] = 0;
        /************** SHARPSHOOTER: SKILL 33 **************/
        global.skill[32,skillData.level] = 0;
        global.skill[32,skillData.maxLevel] = 10;
        global.skill[32,skillData.requiredLevel] = 0;
        global.skill[32,skillData.preReq] = -1;
        global.skill[32,skillData.info] = "[Full Draw]#Arrow damage and speed doubles but attack speed is halved."; //Duration increase, cooldown increase
        global.skill[32,skillData.primaryEffect] = 0;
        global.skill[32,skillData.secondaryEffect] = 0;
        global.skill[32,skillData.increaseEffect] = 1;
        /************** SKILL 34 **************/
        global.skill[33,skillData.level] = 0;
        global.skill[33,skillData.maxLevel] = 5;
        global.skill[33,skillData.requiredLevel] = 15;
        global.skill[33,skillData.preReq] = 32;
        global.skill[33,skillData.info] = "[Fire Arrow]#Arrow damage increase by 50% and a chance to set enemies on fire";
        global.skill[33,skillData.primaryEffect] = 0;
        global.skill[33,skillData.secondaryEffect] = 0;
        global.skill[33,skillData.increaseEffect] = 5;
        /************** SKILL 35 **************/
        global.skill[34,skillData.level] = 0;
        global.skill[34,skillData.maxLevel] = 10;
        global.skill[34,skillData.requiredLevel] = 25;
        global.skill[34,skillData.preReq] = 33;
        global.skill[34,skillData.info] = "[Barrage]#Fire arrows in an arc";
        global.skill[34,skillData.primaryEffect] = 5;
        global.skill[34,skillData.secondaryEffect] = 3;
        global.skill[34,skillData.increaseEffect] = 1;
        /************* SKILL 36 **************/
        global.skill[35,skillData.level] = 0;
        global.skill[35,skillData.maxLevel] = 1;
        global.skill[35,skillData.requiredLevel] = 50;
        global.skill[35,skillData.preReq] = 34;
        global.skill[35,skillData.info] = "[Gungnir]#Rain arrows from all directions and attack the enemies.";
        global.skill[35,skillData.primaryEffect] = 5;
        global.skill[35,skillData.secondaryEffect] = 150;
        global.skill[35,skillData.increaseEffect] = 0;
        
/************** SKILL 37 **************/
global.skill[36,skillData.level] = 0;
global.skill[36,skillData.maxLevel] = 10;
global.skill[36,skillData.requiredLevel] = 25;
global.skill[36,skillData.preReq] = -1;
global.skill[36,skillData.info] = "[Weakness Analysis]#Increase critical rate by 5% per level";
global.skill[36,skillData.primaryEffect] = 5;
global.skill[36,skillData.secondaryEffect] = 0;
global.skill[36,skillData.increaseEffect] = 5;
/************** SKILL 38 **************/
global.skill[37,skillData.level] = 0;
global.skill[37,skillData.maxLevel] = 10;
global.skill[37,skillData.requiredLevel] = 30;
global.skill[37,skillData.preReq] = 36;
global.skill[37,skillData.info] = "[Vital Strike]#Increase critical damage by 50 per level";
global.skill[37,skillData.primaryEffect] = 0;
global.skill[37,skillData.secondaryEffect] = 0;
global.skill[37,skillData.increaseEffect] = 50;
/************** SKILL 39 **************/
global.skill[38,skillData.level] = 0;
global.skill[38,skillData.maxLevel] = 10;
global.skill[38,skillData.requiredLevel] = 40;
global.skill[38,skillData.preReq] = 37;
global.skill[38,skillData.info] = "[Vital Strike II]#Increase critical damage by 5% per level";
global.skill[38,skillData.primaryEffect] = 1;
global.skill[38,skillData.secondaryEffect] = 0;
global.skill[38,skillData.increaseEffect] = 0.05;
/************** SKILL 40 **************/
global.skill[39,skillData.level] = 0;
global.skill[39,skillData.maxLevel] = 3;
global.skill[39,skillData.requiredLevel] = 30;
global.skill[39,skillData.preReq] = 47;
global.skill[39,skillData.info] = "[Generation II]#+10 HP generation per second per level";
global.skill[39,skillData.primaryEffect] = 0;
global.skill[39,skillData.secondaryEffect] = 0;
global.skill[39,skillData.increaseEffect] = 10;
/************** SKILL 41 **************/
global.skill[40,skillData.level] = 0;
global.skill[40,skillData.maxLevel] = 3;
global.skill[40,skillData.requiredLevel] = 40;
global.skill[40,skillData.preReq] = 39;
global.skill[40,skillData.info] = "[Generation III]#+15 HP generation per second per level";
global.skill[40,skillData.primaryEffect] = 0;
global.skill[40,skillData.secondaryEffect] = 0;
global.skill[40,skillData.increaseEffect] = 15;
/************** SKILL 42 **************/
global.skill[41,skillData.level] = 0;
global.skill[41,skillData.maxLevel] = 10;
global.skill[41,skillData.requiredLevel] = 20;
global.skill[41,skillData.preReq] = -1;
global.skill[41,skillData.info] = "[Hermes' Boots]#+0.1 Movement speed per level";
global.skill[41,skillData.primaryEffect] = 0;
global.skill[41,skillData.secondaryEffect] = 0;
global.skill[41,skillData.increaseEffect] = 0.1;
/************** SKILL 43 **************/
global.skill[42,skillData.level] = 0;
global.skill[42,skillData.maxLevel] = 3;
global.skill[42,skillData.requiredLevel] = 40;
global.skill[42,skillData.preReq] = 41;
global.skill[42,skillData.info] = "[Rapid Strikes]#+1 Attack Speed per level";
global.skill[42,skillData.primaryEffect] = 0;
global.skill[42,skillData.secondaryEffect] = 0;
global.skill[42,skillData.increaseEffect] = 1;
/************** SKILL 44 **************/
global.skill[43,skillData.level] = 0;
global.skill[43,skillData.maxLevel] = 10;
global.skill[43,skillData.requiredLevel] = -1;
global.skill[43,skillData.preReq] = -1;
global.skill[43,skillData.info] = "[Defense I]#Stamina +10, +5 each skill level";
global.skill[43,skillData.primaryEffect] = 10;
global.skill[43,skillData.secondaryEffect] = 0;
global.skill[43,skillData.increaseEffect] = 5;
/************** SKILL 45 **************/
global.skill[44,skillData.level] = 0;
global.skill[44,skillData.maxLevel] = 10;
global.skill[44,skillData.requiredLevel] = 15;
global.skill[44,skillData.preReq] = 43;
global.skill[44,skillData.info] = "[Defense II]#Stamina  +30, +20 each skill level";
global.skill[44,skillData.primaryEffect] = 30;
global.skill[44,skillData.secondaryEffect] = 0;
global.skill[44,skillData.increaseEffect] = 20;
/************** SKILL 46 **************/
global.skill[45,skillData.level] = 0;
global.skill[45,skillData.maxLevel] = 10;
global.skill[45,skillData.requiredLevel] = 30;
global.skill[45,skillData.preReq] = 44;
global.skill[45,skillData.info] = "[Defense III]#Stamina  +60, +30 each skill level";
global.skill[45,skillData.primaryEffect] = 60;
global.skill[45,skillData.secondaryEffect] = 0;
global.skill[45,skillData.increaseEffect] = 30;
/************** SKILL 47 **************/
global.skill[46,skillData.level] = 0;
global.skill[46,skillData.maxLevel] = 15;
global.skill[46,skillData.requiredLevel] = 50;
global.skill[46,skillData.preReq] = 45;
global.skill[46,skillData.info] = "[Defense IV]#Stamina  +100, +50 each skill level";
global.skill[46,skillData.primaryEffect] = 100;
global.skill[46,skillData.secondaryEffect] = 0;
global.skill[46,skillData.increaseEffect] = 50;
/************** SKILL 48 **************/
global.skill[47,skillData.level] = 0;
global.skill[47,skillData.maxLevel] = 3;
global.skill[47,skillData.requiredLevel] = 5;
global.skill[47,skillData.preReq] = 4;
global.skill[47,skillData.info] = "[Generation I]#+5 HP generation per second per level";
global.skill[47,skillData.primaryEffect] = 0;
global.skill[47,skillData.secondaryEffect] = 0;
global.skill[47,skillData.increaseEffect] = 5;
/************** SKILL 49 **************/
global.skill[48,skillData.level] = 0;
global.skill[48,skillData.maxLevel] = 10;
global.skill[48,skillData.requiredLevel] = 30;
global.skill[48,skillData.preReq] = -1;
global.skill[48,skillData.info] = "[Vampire]#For every special attack, there is a 10% chance to convert 1% of damage done to HP";
global.skill[48,skillData.primaryEffect] = 0;
global.skill[48,skillData.secondaryEffect] = 10;
global.skill[48,skillData.increaseEffect] = 1;
/************** SKILL 50 **************/
global.skill[49,skillData.level] = 0;
global.skill[49,skillData.maxLevel] = 10;
global.skill[49,skillData.requiredLevel] = 30;
global.skill[49,skillData.preReq] = -1;
global.skill[49,skillData.info] = "[Energy Sap]#For every normal attack, there is a 10% chance to convert 1% of damage done to SP";
global.skill[49,skillData.primaryEffect] = 0;
global.skill[49,skillData.secondaryEffect] = 10;
global.skill[49,skillData.increaseEffect] = 1;
/************** SKILL 51 **************/
global.skill[50,skillData.level] = 0;
global.skill[50,skillData.maxLevel] = 10;
global.skill[50,skillData.requiredLevel] = 60;
global.skill[50,skillData.preReq] = 48;
global.skill[50,skillData.info] = "[Haunting Drain]#Increase [Vampire] probability by 4% per level";
global.skill[50,skillData.primaryEffect] = 0;
global.skill[50,skillData.secondaryEffect] = 0;
global.skill[50,skillData.increaseEffect] = 4;
/************** SKILL 52 **************/
global.skill[51,skillData.level] = 0;
global.skill[51,skillData.maxLevel] = 10;
global.skill[51,skillData.requiredLevel] = 60;
global.skill[51,skillData.preReq] = 49;
global.skill[51,skillData.info] = "[Continuous Sap]#Increase [Energy Sap] probability by 4% per level";
global.skill[51,skillData.primaryEffect] = 0;
global.skill[51,skillData.secondaryEffect] = 0;
global.skill[51,skillData.increaseEffect] = 4;
/************** SKILL 53 **************/
global.skill[52,skillData.level] = 0;
global.skill[52,skillData.maxLevel] = 10;
global.skill[52,skillData.requiredLevel] = 30;
global.skill[52,skillData.preReq] = -1;
global.skill[52,skillData.info] = "[Item Attraction]#Items nearby will be dragged to you";
global.skill[52,skillData.primaryEffect] = 0;
global.skill[52,skillData.secondaryEffect] = 0;
global.skill[52,skillData.increaseEffect] = 16;
/************** SKILL 54 **************/
global.skill[53,skillData.level] = 0;
global.skill[53,skillData.maxLevel] = 5;
global.skill[53,skillData.requiredLevel] = 1;
global.skill[53,skillData.preReq] = -1;
global.skill[53,skillData.info] = "[Maximize I}#Increase minimum damage by 5% per level";
global.skill[53,skillData.primaryEffect] = 0;
global.skill[53,skillData.secondaryEffect] = 0;
global.skill[53,skillData.increaseEffect] = 1;
/************** SKILL 55 **************/
global.skill[54,skillData.level] = 0;
global.skill[54,skillData.maxLevel] = 5;
global.skill[54,skillData.requiredLevel] = 10;
global.skill[54,skillData.preReq] = 53;
global.skill[54,skillData.info] = "[Maximize II}#Increase minimum damage by 5% per level";
global.skill[54,skillData.primaryEffect] = 0;
global.skill[54,skillData.secondaryEffect] = 0;
global.skill[54,skillData.increaseEffect] = 1;
/************** SKILL 56 **************/
global.skill[55,skillData.level] = 0;
global.skill[55,skillData.maxLevel] = 5;
global.skill[55,skillData.requiredLevel] = 40;
global.skill[55,skillData.preReq] = 54;
global.skill[55,skillData.info] = "[Maximize III}#Increase minimum damage by 5% per level";
global.skill[55,skillData.primaryEffect] = 0;
global.skill[55,skillData.secondaryEffect] = 0;
global.skill[55,skillData.increaseEffect] = 1;
/************** SKILL 57 **************/
global.skill[56,skillData.level] = 0;
global.skill[56,skillData.maxLevel] = 5;
global.skill[56,skillData.requiredLevel] = 80;
global.skill[56,skillData.preReq] = 55;
global.skill[56,skillData.info] = "[Maximize IV}#Increase minimum damage by 5% per level";
global.skill[56,skillData.primaryEffect] = 0;
global.skill[56,skillData.secondaryEffect] = 0;
global.skill[56,skillData.increaseEffect] = 1;
