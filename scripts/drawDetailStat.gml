///drawDetailStat()
var wv, hv, xv, yv;
wv = view_wport[0];
hv = view_hport[0];
xv = view_xview[0];
yv = view_yview[0];
draw_set_font(guiFont);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_colour(white);
var className;
switch(global.class){
    case 0: className = "Force Master";
            break;
    case 1: className = "Swordsman";
            break;
    case 2: className = "Wazard";
            break;
    case 3: className = "Marksman";
            break;
}
draw_text(96,32,className);
draw_sprite(spr_class_icon,global.class,48,16);
draw_text(64,64,"Lv."+string(global.level));

for(i = 0; i < 9; i++){
    draw_sprite(spr_stat,i,64,96+(i*32));
}
draw_text(96,96,"STR: "+string(global.str+getAllEquipmentBonus(equipData.str)));
draw_text(96,128,"STAM: "+string(global.stam+getAllEquipmentBonus(equipData.stam)));
draw_text(96,160,"MANA: "+string(global.mana+getAllEquipmentBonus(equipData.mana)));
draw_text(96,192,"LUCK: "+string(global.luck+getAllEquipmentBonus(equipData.luck)));

draw_text(96,256,global.maxHP+getAllEquipmentBonus(equipData.hp));
draw_text(96,288,"+"+string(global.hpGen));
draw_text(96,320,global.maxSP+getAllEquipmentBonus(equipData.sp));
draw_text(96,352,"+"+string(global.spGen));

var phyDmg = (global.str+getAllEquipmentBonus(equipData.str))*max(1,useSkill(19,1));
var magDmg = (global.mana+getAllEquipmentBonus(equipData.mana))*max(1,useSkill(19,1));
draw_text(320,96,"Phy Att:#"+string(round(phyDmg*min(global.minDmg+getAllEquipmentBonus(equipData.minDmg),global.maxDmg+getAllEquipmentBonus(equipData.maxDmg))))+"-"+string(round(phyDmg*(global.maxDmg+getAllEquipmentBonus(equipData.maxDmg)))));
draw_text(320,160,"Mag Att:#"+string(round(magDmg*min(global.minDmg+getAllEquipmentBonus(equipData.minDmg),global.maxDmg+getAllEquipmentBonus(equipData.maxDmg))))+"-"+string(round(magDmg*(global.maxDmg+getAllEquipmentBonus(equipData.minDmg)))));

draw_text(544,96,"Critical: "+string(global.crit+getAllEquipmentBonus(equipData.crit))+"%");
draw_text(544,128,"Crit. Damage: "+string(global.critAtt+getAllEquipmentBonus(equipData.critDmg)));
draw_text(544,160,"Armour Pen.: +"+string(useSkill(19,1)*100)+"%");
draw_text(544,192,"Movement: "+string(2+useSkill(41,1)));
draw_text(544,256,"Special Attack#MP Cost: "+string(max(1,round(global.level/10)))+" MP");

draw_sprite_ext(spr_drop_item,0,64,hv-96,4,4,0,white,1);
draw_text(96,hv-96,string(global.gold));
draw_set_colour(white);