///drawSkill()
var wv, hv, xv, yv;
wv = view_wport[0];
hv = view_hport[0];
xv = view_xview[0];
yv = view_yview[0];
var length = array_height_2d(global.skillCoord);
var drawInfo = false;
var viewSkill = 0;
for(var j = 0; j < length; j ++){
    if(global.level >= global.skill[j,2]){
        var preSkill, skillColor, mouseX, mouseY;
        preSkill = global.skill[j,3];
        skillColor = red;
        mouseX = xv+(global.skillCoord[j,0]*20);
        mouseY = yv+(global.skillCoord[j,1]*20);
        if(global.skillPoints == 0){ //Cannot learn
            skillColor = red;
        }
        else if (checkPrerequisite(j)){ //Can be learn
            if(global.skill[j,0] == 0){ //Can learn, have no points invested
                skillColor = green;
            }
            else if(global.skill[j,0] == global.skill[j,1]){ // Skill maxed
                skillColor = white;
            }
            else{
                skillColor = yellow; //Skill have not maxed
            }
        }
        if(popup_mouse_message(mouseX,mouseY,20+mouseX,20+mouseY,false)){ // if mouse is hover over
            drawInfo = true;
            viewSkill = j;
            if(global.skill[j,0] != global.skill[j,1] && skillColor != red){
                if(mouse_check_button_pressed(mb_left) || mouse_check_button(mb_right)){ //Check mouse button pressed
                    increaseSkillLevel(j); //Increment skill level and apply effect
                    global.skill[j,skillData.requiredLevel]++;
                    sendSystemMessage("Lv."+string(global.skill[j,0])+" "+getSkillName(j)+" learnt"); //Send Message to system
                }
            }
            //print("Skill "+string(viewSkill)); //Debug message
        }
        draw_sprite_ext(spr_skillOutline,0,global.skillCoord[j,0]*32,global.skillCoord[j,1]*32,1,1,0,skillColor,1);
        draw_set_colour(skillColor);
        if(preSkill >= 0){
            //Pre-requisite arrow
            var xStart = 16+global.skillCoord[preSkill,0]*32;
            var yStart = 16+global.skillCoord[preSkill,1]*32;
            var xDest = 16+global.skillCoord[j,0]*32;
            var yDest = 16+global.skillCoord[j,1]*32;
            var xOffset = -lengthdir_x(16,point_direction(xStart,yStart,xDest,yDest));
            var yOffset = -lengthdir_y(16,point_direction(xStart,yStart,xDest,yDest));
            draw_line_width(xStart,yStart,xDest-lengthdir_x(24,point_direction(xStart,yStart,xDest,yDest)),yDest-lengthdir_y (24,point_direction(xStart,yStart,xDest,yDest)),5);
            draw_arrow(xStart,yStart,xDest+xOffset,yDest+yOffset,20);
        }
        draw_set_colour(white);
        draw_set_valign(fa_bottom);
        draw_set_halign(fa_center);
        draw_set_font(global.game_font);
        var stringLevel;
        stringLevel = string(global.skill[j,0])+"/"+string(global.skill[j,1]);        
        /*if(global.skill[j,0] != global.skill[j,1]){
            stringLevel = string(global.skill[j,0])+"/"+string(global.skill[j,1]);        
        }
        else{
            stringLevel = "Maxed";
        }*/
        if(global.skill[j,0] > 0){
            draw_text_colour(16+global.skillCoord[j,0]*32,global.skillCoord[j,1]*32,stringLevel,white,white,white,white,1);
        }
    }
}
for(var i = 0; i < length; i++){
    if(global.level >= global.skill[i,2]){
        draw_sprite(spr_skills,i,global.skillCoord[i,0]*32,global.skillCoord[i,1]*32); //Draw image
        if(global.skill[i,0] == 0){
            draw_set_alpha(0.6);
            draw_rectangle_colour(global.skillCoord[i,0]*32,global.skillCoord[i,1]*32,32+global.skillCoord[i,0]*32,32+global.skillCoord[i,1]*32,0,0,0,0,false); // Black out if does not meed requirement
            draw_set_alpha(1);
            /*if(global.level < global.skill[i,2]){
                draw_set_colour(red);
                draw_set_valign(fa_top);
                draw_set_halign(fa_center);
                draw_set_font(global.skillNumberFont);
                draw_text(16+global.skillCoord[i,0]*32,16+global.skillCoord[i,1]*32,global.skill[i,2]); //Draw level required
                draw_set_colour(white);
            }*/
        }
    }
}
if(drawInfo){
    /************** SKILL INFORMATION **************/
    draw_set_font(skillFont);
    var xInfo = 32+(mouse_x-xv)*windowXRatio; //Store X 
    var yInfo = 32+(mouse_y-yv)*windowYRatio; //Store Y
    /********************** Additional information *************************/
    var skillString, addString;
    addString = ""
    skillString = "Lv. "+string(global.skill[viewSkill,0])+"/"+string(global.skill[viewSkill,1])+"#"+string(global.skill[viewSkill,4])+"##";
    if(global.skillPoints == 0){
        skillString = string_insert("A skill points is required.##",skillString,0);
    }
    if(global.skill[viewSkill,0] > 0){
        switch(viewSkill){
            case 0: case 1: case 2: case 3:
                addString = "Current:#+"+string(useSkill(viewSkill,3)*(global.skill[viewSkill,0]+1))+" STR#Next:#+"+string(useSkill(viewSkill,3)*(global.skill[viewSkill,0]+2))+" STR";
                break;
            case 4: case 5: case 6: case 7:
                addString = "Current:#+"+string(useSkill(viewSkill,3)*(global.skill[viewSkill,0]+1))+" HP#Next:#+"+string(useSkill(viewSkill,3)*(global.skill[viewSkill,0]+2))+" HP";
                break;
            case 8: case 9: case 10: case 11:
                addString = "MP +"+string(useSkill(viewSkill,2))+"#Current:#+"+string(useSkill(viewSkill,3)*(global.skill[viewSkill,0]+1))+" MAG#Next:#+"+string(useSkill(viewSkill,3)*(global.skill[viewSkill,0]+2))+" MAG";
                break;
            case 12: case 13: case 14: case 15:
                addString = "Current:#+"+string(useSkill(viewSkill,3)*(global.skill[viewSkill,0]+1))+" Luck#Next:#+"+string(useSkill(viewSkill,3)*(global.skill[viewSkill,0]+2))+" Luck";
                break;
            case 16: case 17:
                addString = "Current:#+"+string(useSkill(viewSkill,1))+" MP Generation#Next: +"+string(useSkill(viewSkill,3)*(global.skill[viewSkill,0]+1))+" MP Generation";
                break;
            case 18:
                addString = "Current:#MP Generation +"+string(useSkill(viewSkill,1))+"#+"+string(useSkill(viewSkill,2)*global.skill[viewSkill,0])+" Generation Speed
                #Next:#MP Generation +"+string(useSkill(viewSkill,1)*global.skill[viewSkill,0])+"#+"+string(useSkill(viewSkill,2)*(global.skill[viewSkill,0]+1))+" Generation Speed";
                break;
            case 19: 
                addString = "Current:#Damage +"+string(useSkill(viewSkill,1)*100)+"%
                #Next:#Damage +"+string((useSkill(viewSkill,1)+useSkill(viewSkill,3))*100)+"%"
                break;
                /**************** FM SKILL ***************/
            case 20: 
                addString = "Current:#Attack +"+string(useSkill(viewSkill,1)*100)+"%#MP Required: "+string(useSkill(viewSkill,2)+(global.skill[viewSkill,0]*10))+"
                #Next:#Attack +"+string((useSkill(viewSkill,1)+useSkill(viewSkill,3))*100)+"%#MP Required: "+string(useSkill(viewSkill,2)+((global.skill[viewSkill,0]+1)*10));
                if(isSkillMax(viewSkill)) {
                    addString += "##Max Level Upgrade#Create 2 additional#forces";
                }
                break;
            case 21: 
                addString = "Current:#Penetration +"+string(useSkill(viewSkill,1)-1)+"#MP Required: "+string(useSkill(viewSkill,2)+(global.skill[viewSkill,0]*10))+"
                #Next:#Penetration +"+string(useSkill(viewSkill,1)+useSkill(viewSkill,3)-1)+"#MP Required: "+string(useSkill(viewSkill,2)+((global.skill[viewSkill,0]+1)*10));
                if(isSkillMax(viewSkill)) {
                    addString += "##Max Level Upgrade#Recover 1% of damage as HP and MP";
                }
                break;
            case 22: 
                addString = "Current:#Number of Forces: "+string(useSkill(viewSkill,1))+"#MP Required: "+string(useSkill(viewSkill,2)+(global.skill[viewSkill,0]*10))+"
                #Next:#Number of Forces: "+string(useSkill(viewSkill,1)+useSkill(viewSkill,3))+"#MP Required: "+string(useSkill(viewSkill,2)+((global.skill[viewSkill,0]+1)*10));
                if(isSkillMax(viewSkill)) {
                    addString += "##Max Level Upgrade#Forces do multi hits#Multi hits: 30% damage x 4 hits";
                }
                break;
            case 23: 
                addString = "Current:#Attack: "+string(useSkill(viewSkill,1)*100)+"%#MP Required: "+string(useSkill(viewSkill,2)+(global.skill[viewSkill,0]*10));
                break;
                /**************** SM SKILL ***************/
            case 24:
                addString = "Current:#Attack +"+string(round(useSkill(viewSkill,1)*100))+"%#MP Required: "+string(useSkill(viewSkill,2)+(global.skill[viewSkill,0]*10))+"
                #Next:#Attack +"+string(round((useSkill(viewSkill,1)+useSkill(viewSkill,3))*100))+"%#MP Required: "+string(useSkill(viewSkill,2)+((global.skill[viewSkill,0]+1)*10));
                if (isSkillMax(viewSkill)) {
                    addString += "##Max Level Upgrade#Attack range increases";
                }
                break;
            case 25: 
                addString = "Current:#Attack Speed +"+string(useSkill(viewSkill,1))+"#Attack power -"+string(round(global.skill[viewSkill,0]*5))+"%#MP Required: "+string(useSkill(viewSkill,2)+(global.skill[viewSkill,0]*10))+"
                #Next:#Attack Speed +"+string(useSkill(viewSkill,1)+useSkill(viewSkill,3))+"#Attack power -"+string(round((global.skill[viewSkill,0]+1)*5))+"%#MP Required: "+string(useSkill(viewSkill,2)+((global.skill[viewSkill,0]+1)*10));
                if (isSkillMax(viewSkill)) {
                    addString += "##Max Level Upgrade#Create sword projectile";
                }
                break;
                /**************** WZ SKILL ***************/
            case 28: 
                addString = "Current:#Heal "+string(useSkill(viewSkill,1))+"% x 10 times MP Required: "+string(useSkill(viewSkill,2)+(global.skill[viewSkill,0]*10))+"
                #Next: Heal "+string((useSkill(viewSkill,1)+useSkill(viewSkill,3)))+"% x 10 times#MP Required: "+string(useSkill(viewSkill,2)+((global.skill[viewSkill,0]+1)*10));
                break;
            case 29: 
                addString = "Current:#MP Generation +"+string(useSkill(viewSkill,1))+"#MP Required: "+string(useSkill(viewSkill,2)+(global.skill[viewSkill,0]*10))+"
                #Next:#MP Generation +"+string(useSkill(viewSkill,1)+useSkill(viewSkill,3))+"#MP Required: "+string(useSkill(viewSkill,2)+((global.skill[viewSkill,0]+1)*10));
                break;
            case 30: 
                addString = "Current:#Number of ice spikes: "+string(global.skill[viewSkill,1]*5)+"#Power:"+string(useSkill(viewSkill,1)+useSkill(viewSkill,3))+"x#MP Required: "+string(useSkill(viewSkill,2)+(global.skill[viewSkill,0]*10))+"
                #Next:#Number of ice spikes: "+string(5+global.skill[viewSkill,1]*5)+"#Power:"+string(useSkill(viewSkill,1)+(useSkill(viewSkill,3)*2))+"x#MP Required: "+string(useSkill(viewSkill,2)+((global.skill[viewSkill,0]+1)*10));
                break;
            case 31: 
                addString = "Current:#Lighting: 1000%#MP Cost per hit: 100 MP";
                break;
                /**************** Critical ***************/
            case 36: 
                addString = "Current:#Critical +"+string(useSkill(viewSkill,3)*global.skill[viewSkill,0])+"
                #Next:#Critical +"+string(useSkill(viewSkill,3)*(global.skill[viewSkill,0]+1));
                break;
            case 37: case 38:
                addString = "Current:#Critical Damage +"+string(useSkill(viewSkill,3)*global.skill[viewSkill,0])+"
                #Next:#Critical Damage +"+string(useSkill(viewSkill,3)*(global.skill[viewSkill,0]+1));
                break;
                /**************** HP+ ***************/
            case 39: case 40: case 47: 
                addString = "Current:#HP Generation +"+string(useSkill(viewSkill,3)*global.skill[viewSkill,0])+"/sec
                #Next:#HP Generation +"+string(useSkill(viewSkill,3)*(global.skill[viewSkill,0]+1))+"/sec";
                break;
                /**************** Speed + ***************/
            case 41:
                addString = "Current:#Movement Speed +"+string(useSkill(viewSkill,3)*global.skill[viewSkill,0])+"
                #Next:#Movement Speed +"+string(useSkill(viewSkill,3)*(global.skill[viewSkill,0]+1));
                break;
            case 42:
                addString = "Current:#Attack Speed +"+string(useSkill(viewSkill,3)*global.skill[viewSkill,0])+"
                #Next:#Attack Speed +"+string(useSkill(viewSkill,3)*(global.skill[viewSkill,0]+1));
                break;
            case 43: case 44: case 45: case 46:
                addString = "Current:#+"+string(useSkill(viewSkill,3)*(global.skill[viewSkill,0]+1))+"
                #Next:#+"+string(useSkill(viewSkill,3)*(global.skill[viewSkill,0]+2))+" STAM";
                break;
            case 48:
                addString = "Current:#"+string(useSkill(viewSkill,2))+"% to steal HP#Convert "+string(useSkill(viewSkill,1))+"% damage dealt
                #Next:#"+string(useSkill(viewSkill,2))+"% to steal HP#Convert "+string(useSkill(viewSkill,1)+useSkill(viewSkill,3))+"% damage dealt"
                break;
            case 49:
                addString = "Current:#"+string(useSkill(viewSkill,2))+"% to steal MP#Convert "+string(useSkill(viewSkill,1))+"% damage dealt
                #Next:#"+string(useSkill(viewSkill,2))+"% to steal MP#Convert "+string(useSkill(viewSkill,1)+useSkill(viewSkill,3))+"% damage dealt"
                break;
            case 50: 
                addString = "Current:#[Vampire] activation chance +"+string(useSkill(viewSkill,1))+"
                #Next:#[Vampire] activation chance +"+string(useSkill(viewSkill,1)+useSkill(viewSkill,3))+""
                break
            case 51: 
                addString = "Current:#[Energy Sap] activation chance +"+string(useSkill(viewSkill,1))+"
                #Next:#[Energy Sap] activation chance +"+string(useSkill(viewSkill,1)+useSkill(viewSkill,3))+""
                break
        }
    }
    else if(global.level < global.skill[viewSkill,2]){
        addString = "Requires Level "+string(global.skill[viewSkill,2]);
    }
    skillString = string_insert(addString,skillString,string_length(skillString)+1); // Add in
    var wBreak = 256;
    var sepBreak = 16
    var backY = string_height_ext(skillString,sepBreak,wBreak)+16;//background's y
    draw_rectangle(xInfo,yInfo,xInfo+272,yInfo+backY,false); //Draw background
    draw_line_width_colour(xInfo,yInfo,xInfo+272,yInfo,3,0,0);
    draw_line_width_colour(xInfo,yInfo,xInfo,yInfo+backY,3,0,0);
    draw_line_width_colour(xInfo,yInfo+backY,xInfo+272,yInfo+backY,3,0,0);
    draw_line_width_colour(xInfo+272,yInfo,xInfo+272,yInfo+backY,3,0,0);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    draw_text_ext_colour(xInfo+8,yInfo+8,skillString,sepBreak,wBreak,0,0,0,0,1);
}
draw_set_font(global.game_font);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text_transformed_colour(32,16,"Skill points:    "+string(global.skillPoints),2,2,0,white,white,white,white,1);