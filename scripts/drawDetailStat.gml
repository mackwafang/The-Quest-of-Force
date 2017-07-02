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
draw_text(96,96,"STR: "+string(global.str));
draw_text(96,128,"STAM: "+string(global.stam));
draw_text(96,160,"MANA: "+string(global.mana));
draw_text(96,192,"LUCK: "+string(global.luck));

draw_text(96,256,global.maxHP);
draw_text(96,288,"+"+string(global.hpGen));
draw_text(96,320,global.maxSP);
draw_text(96,352,"+"+string(global.spGen));

draw_text(320,96,"Critical: "+string(global.crit)+"%");
draw_text(320,128,"Crit. Damage: "+string(global.critAtt));
draw_text(320,160,"Armour Pen.: +"+string(useSkill(19,1)*100)+"%");
draw_text(320,192,"Movement: "+string(2+useSkill(41,1)));
draw_text(320,256,"Special Attack#MP Cost: "+string(max(1,round(global.level/10)))+" MP");

draw_sprite_ext(spr_drop_item,0,64,hv-96,4,4,0,white,1);
draw_text(96,hv-96,string(global.gold));
draw_set_colour(white);