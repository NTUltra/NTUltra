function scrDrawHUD() {
	if UberCont.opt_gamemode!=3{//NO HUD gamemode

	draw_set_font(fntM)
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)

	///POPUP TEXT
	with PopupText
	{
		if visible = 1
		{
			var xx = median(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-10-string_width(string_hash_to_newline(mytext))/2,__view_get( e__VW.XView, 0 )+10+string_width(string_hash_to_newline(mytext))/2,x);
			var yy = median(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-30+1,__view_get( e__VW.YView, 0 )+20+1,y);
			draw_set_color(c_black)
			draw_text(xx,yy+1,string_hash_to_newline(string(mytext)))
			draw_text(xx+1,yy+1,string_hash_to_newline(string(mytext)))
			draw_text(xx+1,yy,string_hash_to_newline(string(mytext)))
			draw_set_color(theColour)
			draw_sprite(sprt,ii,xx+(string_width(string_hash_to_newline(string(mytext)))*0.5),yy);
			draw_text(xx,median(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-30,__view_get( e__VW.YView, 0 )+20,y),string_hash_to_newline(string(mytext)))
		}
	}

	with LevelUp
	draw_sprite(sprite_index,-1,x,y)

	if instance_exists(Player)
	{
	//DRAW THE HUD HERE


	//HEALTH BAR
	draw_sprite(sprHealthBar,2,__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+4)
	if Player.maxhealth!=0{
	draw_sprite_ext(sprHealthFill,2,__view_get( e__VW.XView, 0 )+22,__view_get( e__VW.YView, 0 )+7,clamp(84*(Player.lsthealth/Player.maxhealth),0,84),1,0,c_white,1)
	draw_sprite_ext(sprHealthFill,1,__view_get( e__VW.XView, 0 )+22,__view_get( e__VW.YView, 0 )+7,clamp(84*(Player.lsthealth/Player.maxhealth),0,84),1,0,c_white,1)

	if ((Player.sprite_index = Player.spr_hurt and Player.image_index < 1 and !instance_exists(Portal)) or Player.lsthealth < Player.my_health) and !instance_exists(GenCont) and !instance_exists(LevCont)
	draw_sprite_ext(sprHealthFill,0,__view_get( e__VW.XView, 0 )+22,__view_get( e__VW.YView, 0 )+7,clamp(84*(Player.lsthealth/Player.maxhealth),0,84),1,0,c_white,1)
	}
	draw_set_font(fntM)


	//VIKING ARMOUR
	var armour = Player.armour;
	var dir=0;
	repeat(armour)
	{
	dir++;
	draw_sprite(sprArmour,0,__view_get( e__VW.XView, 0 )+94+(15*dir),__view_get( e__VW.YView, 0 )+4);
	}


	//ROGUE AMMO
	if Player.race=22 && Player.ultra_got[88] != 1
	{
		var spr = sprRogueAmmoHUD;
		if Player.ultra_got[85]=1
		{
			if Player.skill_got[10]
			{
				spr = sprRogueAmmoHUDTBPlus;
			}
			else
			{
				spr = sprRogueAmmoHUDTB;
			}
		}
		else if Player.skill_got[10]
		{
			spr = sprRogueAmmoHUDPlus;
		}
		draw_sprite(spr,0,__view_get( e__VW.XView, 0 )+116,__view_get( e__VW.YView, 0 )+11)
		draw_sprite(spr,Player.rogueammo,__view_get( e__VW.XView, 0 )+116,__view_get( e__VW.YView, 0 )+11)
	}



	//CROWNS

	draw_set_halign(fa_left)

	if Player.crown > 1 and !instance_exists(LevCont)
	{
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-string_height(string_hash_to_newline("C"))-2,string_hash_to_newline(string(Player.crown_name[Player.crown]))/*+"#"+string(Player.crown_text[Player.crown])*/)
	draw_text(__view_get( e__VW.XView, 0 )+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-string_height(string_hash_to_newline("C"))-2+1,string_hash_to_newline(string(Player.crown_name[Player.crown]))/*+"#"+string(Player.crown_text[Player.crown])*/)
	draw_text(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-string_height(string_hash_to_newline("C"))-2+1,string_hash_to_newline(string(Player.crown_name[Player.crown]))/*+"#"+string(Player.crown_text[Player.crown])*/)
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-string_height(string_hash_to_newline("C"))-2,string_hash_to_newline(string(Player.crown_name[Player.crown]))/*+"#"+string(Player.crown_text[Player.crown])*/)
	draw_set_valign(fa_top)
	}

	//HEALTH TEXT
	draw_set_halign(fa_center)
	if (!((Player.sprite_index = Player.spr_hurt and Player.image_index < 1 and !instance_exists(Portal)) or Player.lsthealth < Player.my_health) or sin(wave) > 0) or instance_exists(GenCont) or instance_exists(LevCont)
	{
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+23+44,__view_get( e__VW.YView, 0 )+8,string_hash_to_newline(string(Player.my_health)+"/"+string(Player.maxhealth)))
	draw_text(__view_get( e__VW.XView, 0 )+23+45,__view_get( e__VW.YView, 0 )+8,string_hash_to_newline(string(Player.my_health)+"/"+string(Player.maxhealth)))
	draw_text(__view_get( e__VW.XView, 0 )+23+45,__view_get( e__VW.YView, 0 )+7,string_hash_to_newline(string(Player.my_health)+"/"+string(Player.maxhealth)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+23+44,__view_get( e__VW.YView, 0 )+7,string_hash_to_newline(string(Player.my_health)+"/"+string(Player.maxhealth)))
	}
	var wepcolour = c_white;
	
	
	//ULTRA ICON
	dir=1;
	dix=0;
	if Player.skeletonlives>0
	{
	    repeat(Player.skeletonlives)
	    {
			dix++;
			draw_sprite_ext(sprExtraLivesHud,1,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-16*dix,__view_get( e__VW.YView, 0 )+36,1,1,0,c_white,1);
	    }
	}
	dix ++
	repeat(Player.maxultra)
	{

	    if Player.ultra_got[dir]
	    {
			var xx =__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-12-16*dix;
			var yy =__view_get( e__VW.YView, 0 )+20;
			var s = 18;
			if dir == 4 && Player.bskin == 2
			{
				draw_sprite_ext(sprFishCanGunHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 106 && Player.bskin == 1
			{
				draw_sprite_ext(sprHothandsHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 106 && Player.bskin == 2
			{
				draw_sprite_ext(sprExplosiveHandsHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 76 && Player.ultimategamble == true
			{
				draw_sprite_ext(sprUltimateGambleIconHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 23 && Player.altUltra
			{
				draw_sprite_ext(sprYVBlasphemyHUD,0,xx,yy,1,1,0,c_white,1);
			}
		    else if !(dir=79 && Player.race=21){//Horror don't draw skeleton's ultra
				draw_sprite_ext(sprUltraIconHUD,dir,xx,yy,1,1,0,c_white,1);
			}
			if (mouse_x > xx && mouse_x < xx + s && mouse_y > yy && mouse_y < yy + s)
			{
				holdExplainMutation += 2;
				if holdExplainMutation > 10
					holdExplainMutation = 10;
				if holdExplainMutation >= 10
					scrDrawHelp("["+Player.ultra_name[dir]+"]\n"+Player.ultra_text[dir]);
			}
			dix+=1
			
	    }
	dir+=1;
	}
	//SKILL ICONS
	dix = 0;
	dir = 0;
	if Player.level > 13 - (max(-1,Player.maxarmour-1))
	{
		var cdir = 0;
		var fs = 0;
		repeat(Player.maxskill+1)
		{
			if Player.skill_got[cdir] == 1
			{
				fs++
				if fs == skillscroll
				{
					dir = cdir;	
				}
			}
			cdir ++;
		}
	}
	repeat(Player.maxskill+1)
	{
		if Player.skill_got[dir] = 1 && dix < 12 - (max(-1,Player.maxarmour-1))
		{
			var xx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-12-16*dix;
			var yy = __view_get( e__VW.YView, 0 )+12;
			var s = 8;
			draw_sprite_ext(sprSkillIconHUD,dir,xx,yy+1,1,1,0,c_black,1)
			draw_sprite_ext(sprSkillIconHUD,dir,xx,yy,1,1,0,c_white,1)
			dix += 1
			if (mouse_x > xx-s && mouse_x < xx + s && mouse_y > yy-s && mouse_y < yy + s)
			{
				var ht;
				if dir == 28//RAGE
					ht = "["+Player.skill_name[dir]+"] ["+string(Player.rage)+"/350]\n"+Player.skill_text[dir];//MAX RAGE
				else
					ht = "["+Player.skill_name[dir]+"]\n"+Player.skill_text[dir];
				
				holdExplainMutation +=2;
				if holdExplainMutation >= 10
					scrDrawHelp(ht);
				
				if holdExplainMutation > 10
					holdExplainMutation = 10;
			}
		}
		dir += 1
		if dir > Player.maxskill
			dir = 0;
	}
	if holdExplainMutation > 0
		holdExplainMutation --;

	var puffColour = make_colour_rgb(250,171,0);//make_colour_rgb(178,122,0);
	var puffA = 0.8
	var loadColour = c_white//make_colour_rgb(255,225,200);//make_colour_rgb(255,174,0);
	var loadA = 0.4;
	var loadedColour = make_colour_rgb(127,87,0);
	//TERTIARY WEAPON
	if Player.race=8{//robotos
	if Player.cwep != 0 && Player.ultra_got[31]//robot ultra c
	{
	var spr, col, wid;
	spr = Player.wep_sprt[Player.cwep]
	wid = 16
	if Player.wep_type[Player.cwep] = 0
	wid = 32
	col = c_dkgray

	//Wepon
	if Player.ccurse==1
	col=make_colour_rgb(136,36,174);//curse
	else if (scrCheckGold(Player.wep_name[Player.cwep]))
	col=make_colour_rgb(223,201,134);//gold
	else if (scrCheckUltra(Player.wep_name[Player.cwep]))
	col=make_colour_rgb(72,253,8);//ultra baby
	
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+110,__view_get( e__VW.YView, 0 )+16,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+112,__view_get( e__VW.YView, 0 )+16,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+111,__view_get( e__VW.YView, 0 )+15,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+111,__view_get( e__VW.YView, 0 )+17,col,1)

	var wwep = Player.cwep;
	var pcc = Player.cqueueshot;
	var pci = 0;
	var pcsw = min(wid*0.5,(sprite_get_width(spr)-sprite_get_xoffset(spr))*0.5);
	var fillw = min(wid,2+sprite_get_width(spr));
	if Player.creload < 0 && Player.wep_load[wwep] != 0
	{
		pci = Player.creload/Player.wep_load[wwep]
		pci = 1+pci;
		pci = pci-floor(pci)
	}
	if Player.creload > 0
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+111,__view_get( e__VW.YView, 0 )+16,c_black,1)
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(Player.wep_load[Player.cwep],1-(Player.creload/Player.wep_load[Player.cwep]))),14,__view_get( e__VW.XView, 0 )+111,__view_get( e__VW.YView, 0 )+16,loadColour,loadA)
	}
	else if Player.creload != 0
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+111,__view_get( e__VW.YView, 0 )+16,loadedColour,1)
		if pcc == 2
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+111,__view_get( e__VW.YView, 0 )+16,puffColour,puffA)
		else if pcc == 1
		{
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,pcsw,14,__view_get( e__VW.XView, 0 )+111,__view_get( e__VW.YView, 0 )+16,puffColour,puffA)
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(Player.wep_load[wwep],1-pci)),14,__view_get( e__VW.XView, 0 )+111,__view_get( e__VW.YView, 0 )+16,loadColour,loadA)
		}
		else
		{
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(Player.wep_load[wwep],1-pci)),14,__view_get( e__VW.XView, 0 )+111,__view_get( e__VW.YView, 0 )+16,loadColour,loadA)
		}
	}
	else
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+111,__view_get( e__VW.YView, 0 )+16,loadedColour,1)	
	}
	
	
	if Player.wep_type[Player.cwep] != 0
	{
	draw_set_halign(fa_left)
	draw_set_color(c_black)
	var cAmmo = string(round(Player.ammo[Player.wep_type[Player.cwep]]));
	draw_text(__view_get( e__VW.XView, 0 )+130,__view_get( e__VW.YView, 0 )+22,cAmmo)
	draw_text(__view_get( e__VW.XView, 0 )+131,__view_get( e__VW.YView, 0 )+22,cAmmo)
	draw_text(__view_get( e__VW.XView, 0 )+131,__view_get( e__VW.YView, 0 )+21,cAmmo)
	if Player.wep_type[Player.wep] = Player.wep_type[Player.cwep]
	draw_set_color(c_white)
	else
	draw_set_color(c_silver)
	if Player.ammo[Player.wep_type[Player.cwep]] <= Player.typ_ammo[Player.wep_type[Player.cwep]]
	{
	if Player.wep_type[Player.wep] = Player.wep_type[Player.cwep]
	draw_set_color(c_red)
	else
	draw_set_color(c_gray)
	}
	if Player.ammo[Player.wep_type[Player.cwep]] <= 0
	draw_set_color(c_dkgray)
	draw_text(__view_get( e__VW.XView, 0 )+130,__view_get( e__VW.YView, 0 )+21,cAmmo)
	}
	}}


	//SECONDARY WEAPON
	if Player.bwep != 0
	{
	var spr, col, wid;
	spr = Player.wep_sprt[Player.bwep]
	wid = 16
	if Player.wep_type[Player.bwep] = 0
	wid = 32
	col = c_dkgray
	if Player.race = 7
	col = c_white

	//wepon
	if Player.bcurse==1
	col=make_colour_rgb(136,36,174);//curse
	else if (scrCheckGold(Player.wep_name[Player.bwep]))
	col=make_colour_rgb(223,201,134);//gold
	else if (scrCheckUltra(Player.wep_name[Player.bwep]))
	col=make_colour_rgb(72,253,8);//ultra baby

	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+67,__view_get( e__VW.YView, 0 )+16,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+69,__view_get( e__VW.YView, 0 )+16,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+68,__view_get( e__VW.YView, 0 )+15,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+68,__view_get( e__VW.YView, 0 )+17,col,1)

	var wwep = Player.bwep;
	var pcc = Player.bqueueshot;
	var pci = 0;
	var pcsw = min(wid*0.5,(sprite_get_width(spr)-sprite_get_xoffset(spr))*0.5);
	var fillw = min(wid,2+sprite_get_width(spr));
	if Player.breload < 0 && Player.wep_load[wwep] != 0
	{
		pci = Player.breload/Player.wep_load[wwep]
		pci = 1+pci;
		pci = pci-floor(pci)
	}
	if Player.breload > 0
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+68,__view_get( e__VW.YView, 0 )+16,c_black,1)
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(Player.wep_load[wwep],1-(Player.breload/Player.wep_load[wwep]))),14,__view_get( e__VW.XView, 0 )+68,__view_get( e__VW.YView, 0 )+16,loadColour,loadA)
	}
	else if Player.breload != 0
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+68,__view_get( e__VW.YView, 0 )+16,loadedColour,1)
		if pcc == 2
		{
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+68,__view_get( e__VW.YView, 0 )+16,puffColour,puffA)
		}
		else if pcc == 1
		{
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,pcsw,14,__view_get( e__VW.XView, 0 )+68,__view_get( e__VW.YView, 0 )+16,puffColour,puffA)
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(Player.wep_load[wwep],1-pci)),14,__view_get( e__VW.XView, 0 )+68,__view_get( e__VW.YView, 0 )+16,loadColour,loadA)
		}
		else
		{
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(Player.wep_load[wwep],1-pci)),14,__view_get( e__VW.XView, 0 )+68,__view_get( e__VW.YView, 0 )+16,loadColour,loadA)	
		}
	}
	else
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+68,__view_get( e__VW.YView, 0 )+16,loadedColour,1)	
	}



	if Player.wep_type[Player.bwep] != 0
	{
	draw_set_halign(fa_left)
	draw_set_color(c_black)
	var bAmmo = string(round(Player.ammo[Player.wep_type[Player.bwep]]))
	draw_text(__view_get( e__VW.XView, 0 )+86,__view_get( e__VW.YView, 0 )+22,bAmmo)
	draw_text(__view_get( e__VW.XView, 0 )+87,__view_get( e__VW.YView, 0 )+22,bAmmo)
	draw_text(__view_get( e__VW.XView, 0 )+87,__view_get( e__VW.YView, 0 )+21,bAmmo)
	if Player.race = 7 or Player.wep_type[Player.wep] = Player.wep_type[Player.bwep]
	draw_set_color(c_white)
	else
	draw_set_color(c_silver)
	if Player.ammo[Player.wep_type[Player.bwep]] <= Player.typ_ammo[Player.wep_type[Player.bwep]]
	{
	if Player.race = 7 or Player.wep_type[Player.wep] = Player.wep_type[Player.bwep]
	draw_set_color(c_red)
	else
	draw_set_color(c_gray)
	}
	if Player.ammo[Player.wep_type[Player.bwep]] <= 0
	draw_set_color(c_dkgray)
	draw_text(__view_get( e__VW.XView, 0 )+86,__view_get( e__VW.YView, 0 )+21,bAmmo)
	}
	}


	//PRIMARY WEAPON
	var spr, wid;
	spr = Player.wep_sprt[Player.wep]
	wid = 16
	if Player.wep_type[Player.wep] = 0
	wid = 32

	wepcolour=c_white;

	if Player.curse==1
	wepcolour=make_colour_rgb(136,36,174);//curse
	else if (scrCheckGold(Player.wep_name[Player.wep]))
	wepcolour=make_colour_rgb(223,201,134);//gold
	else if (scrCheckUltra(Player.wep_name[Player.wep]))
	wepcolour=make_colour_rgb(72,253,8);//ultra baby

	//draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+25,__view_get( e__VW.YView, 0 )+16,wepcolour,1)
	//draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+23,__view_get( e__VW.YView, 0 )+16,wepcolour,1)
	/*
	Tried outline but it takes too much HUD space
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+26,__view_get( e__VW.YView, 0 )+18,wepcolour,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+22,__view_get( e__VW.YView, 0 )+18,wepcolour,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+22,__view_get( e__VW.YView, 0 )+15,wepcolour,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+26,__view_get( e__VW.YView, 0 )+15,wepcolour,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+24,__view_get( e__VW.YView, 0 )+15,wepcolour,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+24,__view_get( e__VW.YView, 0 )+18,wepcolour,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+22,__view_get( e__VW.YView, 0 )+16,wepcolour,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+26,__view_get( e__VW.YView, 0 )+16,wepcolour,1)
	*/
	
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+24,__view_get( e__VW.YView, 0 )+16+1,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+22,__view_get( e__VW.YView, 0 )+16+1,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+23,__view_get( e__VW.YView, 0 )+17+1,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+23,__view_get( e__VW.YView, 0 )+15+1,c_black,1)
	
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+25,__view_get( e__VW.YView, 0 )+16+1,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+23,__view_get( e__VW.YView, 0 )+16+1,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+24,__view_get( e__VW.YView, 0 )+17+1,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+24,__view_get( e__VW.YView, 0 )+15+1,c_black,1)
	
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+25,__view_get( e__VW.YView, 0 )+16,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+23,__view_get( e__VW.YView, 0 )+16,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+24,__view_get( e__VW.YView, 0 )+17,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+24,__view_get( e__VW.YView, 0 )+15,c_black,1)
	
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+24,__view_get( e__VW.YView, 0 )+16,wepcolour,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+22,__view_get( e__VW.YView, 0 )+16,wepcolour,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+23,__view_get( e__VW.YView, 0 )+17,wepcolour,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+23,__view_get( e__VW.YView, 0 )+15,wepcolour,1)
	
	
	

	var wwep = Player.wep;
	var pcc = Player.queueshot;
	var pci = 0;
	var pcsw = min(wid*0.5,(sprite_get_width(spr)-sprite_get_xoffset(spr))*0.5);
	var fillw = min(wid,2+sprite_get_width(spr));
	if Player.reload < 0 && Player.wep_load[wwep] != 0
	{
		pci = Player.reload/Player.wep_load[wwep]
		pci = 1+pci;
		pci = pci-floor(pci)
	}
	if Player.reload > 0
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+23,__view_get( e__VW.YView, 0 )+16,c_black,1)
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(Player.wep_load[wwep],1-(Player.reload/Player.wep_load[wwep]))),14,__view_get( e__VW.XView, 0 )+23,__view_get( e__VW.YView, 0 )+16,loadColour,loadA)
	}
	else if Player.reload != 0
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+23,__view_get( e__VW.YView, 0 )+16,loadedColour,1)
		if pcc == 1
		{
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,pcsw,14,__view_get( e__VW.XView, 0 )+23,__view_get( e__VW.YView, 0 )+16,puffColour,puffA)
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(Player.wep_load[wwep],1-pci)),14,__view_get( e__VW.XView, 0 )+23,__view_get( e__VW.YView, 0 )+16,loadColour,loadA)
		}
		else if pcc == 2
		{
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+23,__view_get( e__VW.YView, 0 )+16,puffColour,1)
		} else
		{
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(Player.wep_load[wwep],1-pci)),14,__view_get( e__VW.XView, 0 )+23,__view_get( e__VW.YView, 0 )+16,loadColour,loadA)	
		}
	}
	else
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+23,__view_get( e__VW.YView, 0 )+16,loadedColour,1)	
	}
	
	//Debug
	/*
	if UberCont.public = 0 && instance_exists(Player)
	{
		var xx = __view_get( e__VW.XView, 0 )+14
		var yy = __view_get( e__VW.YView, 0 )+60
		draw_text(xx+32,yy,"reload: "+string(Player.reload));
		draw_text(xx+32,yy,"\nbreload: "+string(Player.breload));
	}
	*/
	
	//Ultramod
	if Player.ultramod != 0
	{
		var xx = __view_get( e__VW.XView, 0 )+14
		var yy = __view_get( e__VW.YView, 0 )+60
		var h = 16*0.5;
		var w = 24*0.5;
		if (mouse_x > xx-w && mouse_x < xx+w && mouse_y < yy+h && mouse_y > yy-h)
		{
			var umn = scrUltraModName(Player.ultramod);
			holdExplainUltraModTimer++;
			if holdExplainUltraModTimer > 30
			{
				scrDrawHelp(umn[0] + " <=> " + umn[1]+"\n"+scrUltraModDescription(Player.ultramod));
			}
			else
			{
				scrDrawHelp(umn[0] + " <=> " + umn[1]);
			}
		}
		else
		{
			holdExplainUltraModTimer = 0;
		}
		draw_sprite(sprUltraModIcon,Player.ultramod,xx,yy);
	}
	//WEAPON MODS!
	var xx = __view_get( e__VW.XView, 0 )+2;
	var yy = __view_get( e__VW.YView, 0 )+43;
	var xs = 10;
	var noHover = true;
	if Player.wepmod1 != 0
	{
		draw_sprite(sprModHUD,Player.wepmod1,xx,yy);
		if (mouse_x > xx && mouse_x < xx+xs && mouse_y < yy+xs && mouse_y > yy)
		{
			noHover = false;
			holdExplainWepModTimer++;
			if holdExplainWepModTimer > 30
			{
				scrDrawHelp(scrWepModName(Player.wepmod1)
				+ "\n" + scrWepModDescription(Player.wepmod1));
			}
			else
			{
				scrDrawHelp(scrWepModName(Player.wepmod1));
			}
		}
	}
	xx += xs;
	if Player.wepmod2 != 0
	{
		draw_sprite(sprModHUD,Player.wepmod2,xx,yy);
		if (mouse_x > xx && mouse_x < xx+xs && mouse_y < yy+xs && mouse_y > yy)
		{
			noHover = false;
			holdExplainWepModTimer++;
			if holdExplainWepModTimer > 30
			{
				scrDrawHelp(scrWepModName(Player.wepmod2)
				+ "\n" + scrWepModDescription(Player.wepmod2));
			}
			else
			{
				scrDrawHelp(scrWepModName(Player.wepmod2));
			}
		}
	}
	xx += xs;
	if Player.wepmod3 != 0
	{
		draw_sprite(sprModHUD,Player.wepmod3,xx,yy);
		if (mouse_x > xx && mouse_x < xx+xs && mouse_y < yy+xs && mouse_y > yy)
		{
			noHover = false;
			holdExplainWepModTimer++;
			if holdExplainWepModTimer > 30
			{
				scrDrawHelp(scrWepModName(Player.wepmod3)
				+ "\n" + scrWepModDescription(Player.wepmod3));
			}
			else
			{
				scrDrawHelp(scrWepModName(Player.wepmod3));
			}
		}
	}
	xx += xs;
	if Player.wepmod4 != 0
	{
		draw_sprite(sprModHUD,Player.wepmod4,xx,yy);
		if (mouse_x > xx && mouse_x < xx+xs && mouse_y < yy+xs && mouse_y > yy)
		{
			noHover = false;
			holdExplainWepModTimer++;
			if holdExplainWepModTimer > 30
			{
				scrDrawHelp(scrWepModName(Player.wepmod4)
				+ "\n" + scrWepModDescription(Player.wepmod4));
			}
			else
			{
				scrDrawHelp(scrWepModName(Player.wepmod4));
			}
		}
	}
	if noHover
	{
		holdExplainWepModTimer = 0;
	}
	if Player.wep_type[Player.wep] != 0
	{
	var aAmmo = string(round(Player.ammo[Player.wep_type[Player.wep]]))
	draw_set_halign(fa_left)
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+42,__view_get( e__VW.YView, 0 )+22,aAmmo)
	draw_text(__view_get( e__VW.XView, 0 )+43,__view_get( e__VW.YView, 0 )+22,aAmmo)
	draw_text(__view_get( e__VW.XView, 0 )+43,__view_get( e__VW.YView, 0 )+21,aAmmo)

	draw_set_color(c_white)
	if Player.ammo[Player.wep_type[Player.wep]] <= Player.typ_ammo[Player.wep_type[Player.wep]]
	draw_set_color(c_red)
	if Player.ammo[Player.wep_type[Player.wep]] <= 0
	draw_set_color(c_dkgray)
	draw_text(__view_get( e__VW.XView, 0 )+42,__view_get( e__VW.YView, 0 )+21,aAmmo)
	}



	//EXPERIENCE BAR
	draw_set_halign(fa_center)
	if Player.skillpoints > 0
	draw_sprite(sprExpBarLevel,0,__view_get( e__VW.XView, 0 )+4,__view_get( e__VW.YView, 0 )+4)
	with Player
	{
		var maxRad = GetPlayerMaxRad();	
	}
	draw_sprite(sprExpBar,(Player.rad/maxRad)*16,__view_get( e__VW.XView, 0 )+4,__view_get( e__VW.YView, 0 )+4)
	var lvl = Player.level
	if lvl != 10
	{
		draw_set_color(c_black)
		draw_text(__view_get( e__VW.XView, 0 )+11,__view_get( e__VW.YView, 0 )+17-string_height(string_hash_to_newline("A"))/2,string_hash_to_newline(string(lvl)))
		draw_text(__view_get( e__VW.XView, 0 )+12,__view_get( e__VW.YView, 0 )+17-string_height(string_hash_to_newline("A"))/2,string_hash_to_newline(string(lvl)))
		draw_text(__view_get( e__VW.XView, 0 )+12,__view_get( e__VW.YView, 0 )+16-string_height(string_hash_to_newline("A"))/2,string_hash_to_newline(string(lvl)))
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+11,__view_get( e__VW.YView, 0 )+16-string_height(string_hash_to_newline("A"))/2,string_hash_to_newline(string(lvl)))
	}
	else
	{
		draw_sprite(sprUltraLevel,0,__view_get( e__VW.XView, 0 )+11,__view_get( e__VW.YView, 0 )+16);
	}



	//BUSINES HOG MONYRAD
	/*
	if Player.race=20
	{
	var rads = 0;
	with Player
	{
		rads = floor((rad/GetPlayerMaxRad())*100);
	}
	txt = "RADS: "+string(rads)+"%";
	draw_set_halign(fa_left)
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+1,__view_get( e__VW.YView, 0 )+51,string_hash_to_newline(string(txt)))
	draw_text(__view_get( e__VW.XView, 0 )+1,__view_get( e__VW.YView, 0 )+52,string_hash_to_newline(string(txt)))
	draw_text(__view_get( e__VW.XView, 0 )+2,__view_get( e__VW.YView, 0 )+53,string_hash_to_newline(string(txt)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+2,__view_get( e__VW.YView, 0 )+51,string_hash_to_newline(string(txt)))

	}*/

	//GOOD O'L HUMPHRY SKILL
	if Player.race=26
	{

	txt = string(round(Player.HumphrySkill));



	draw_set_halign(fa_left)

	draw_sprite(sprHumphrySkill,0,__view_get( e__VW.XView, 0 )+1,__view_get( e__VW.YView, 0 )+66)
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+14,__view_get( e__VW.YView, 0 )+68,string_hash_to_newline(string(txt)))
	draw_text(__view_get( e__VW.XView, 0 )+14,__view_get( e__VW.YView, 0 )+69,string_hash_to_newline(string(txt)))
	draw_text(__view_get( e__VW.XView, 0 )+15,__view_get( e__VW.YView, 0 )+69,string_hash_to_newline(string(txt)))
	if Player.HumphryLoss
	draw_set_color(c_red)
	else
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+15,__view_get( e__VW.YView, 0 )+68,string_hash_to_newline(string(txt)))

	draw_set_color(c_white)
	}


	var ammoheight;
	ammoheight=31;//34


	//AMMO ICONS
	img = 0
	if (Player.race == 26 && instance_exists(HumphryDiscipline) && Player.wep_type[Player.wep] != 1 && Player.wep_type[Player.bwep] != 1)
	{
		img = 3
	}
	else if Player.wep_type[Player.wep] = 1 or (Player.race = 7 and Player.wep_type[Player.bwep] = 1)
	{img = 2}
	else if Player.wep_type[Player.bwep] = 1
	{img = 1}
	draw_sprite(sprBulletIconBG,img,__view_get( e__VW.XView, 0 )+2,__view_get( e__VW.YView, 0 )+ammoheight)
	draw_sprite(sprBulletIcon,7-round((Player.ammo[1]/Player.typ_amax[1])*7),__view_get( e__VW.XView, 0 )+2,__view_get( e__VW.YView, 0 )+ammoheight)//36

	img = 0
	if (Player.race == 26 && instance_exists(HumphryDiscipline) && Player.wep_type[Player.wep] != 2 && Player.wep_type[Player.bwep] != 2)
	{
		img = 3
	}
	else if Player.wep_type[Player.wep] = 2 or (Player.race = 7 and Player.wep_type[Player.bwep] = 2)
	{img = 2}
	else if Player.wep_type[Player.bwep] = 2
	{img = 1}
	draw_sprite(sprShotIconBG,img,__view_get( e__VW.XView, 0 )+12,__view_get( e__VW.YView, 0 )+ammoheight)
	draw_sprite(sprShotIcon,7-round((Player.ammo[2]/Player.typ_amax[2])*7),__view_get( e__VW.XView, 0 )+12,__view_get( e__VW.YView, 0 )+ammoheight)

	img = 0
	if (Player.race == 26 && instance_exists(HumphryDiscipline) && Player.wep_type[Player.wep] != 3 && Player.wep_type[Player.bwep] != 3)
	{
		img = 3
	}
	else if Player.wep_type[Player.wep] = 3 or (Player.race = 7 and Player.wep_type[Player.bwep] = 3)
	{img = 2}
	else if Player.wep_type[Player.bwep] = 3
	{img = 1}
	draw_sprite(sprBoltIconBG,img,__view_get( e__VW.XView, 0 )+22,__view_get( e__VW.YView, 0 )+ammoheight)
	draw_sprite(sprBoltIcon,7-round((Player.ammo[3]/Player.typ_amax[3])*7),__view_get( e__VW.XView, 0 )+22,__view_get( e__VW.YView, 0 )+ammoheight)

	img = 0
	if (Player.race == 26 && instance_exists(HumphryDiscipline) && Player.wep_type[Player.wep] != 4 && Player.wep_type[Player.bwep] != 4)
	{
		img = 3
	}
	else if Player.wep_type[Player.wep] = 4 or (Player.race = 7 and Player.wep_type[Player.bwep] = 4)
	{img = 2}
	else if Player.wep_type[Player.bwep] = 4 
	{img = 1}
	draw_sprite(sprExploIconBG,img,__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.YView, 0 )+ammoheight)
	draw_sprite(sprExploIcon,7-round((Player.ammo[4]/Player.typ_amax[4])*7),__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.YView, 0 )+ammoheight)

	img = 0
	if (Player.race == 26 && instance_exists(HumphryDiscipline) && Player.wep_type[Player.wep] != 5 && Player.wep_type[Player.bwep] != 5)
	{
		img = 3
	}
	else if Player.wep_type[Player.wep] = 5 or (Player.race = 7 and Player.wep_type[Player.bwep] = 5)
	{img = 2}
	else if Player.wep_type[Player.bwep] = 5 
	{img = 1}
	draw_sprite(sprEnergyIconBG,img,__view_get( e__VW.XView, 0 )+42,__view_get( e__VW.YView, 0 )+ammoheight)
	draw_sprite(sprEnergyIcon,7-round((Player.ammo[5]/Player.typ_amax[5])*7),__view_get( e__VW.XView, 0 )+42,__view_get( e__VW.YView, 0 )+ammoheight)

	//LOW AMMO WARNING

	if Player.wep_type[Player.wep] > 0 && Player.ammo[Player.wep_type[Player.wep]] <= Player.typ_ammo[Player.wep_type[Player.wep]] and sin(wave) > 0 and Player.drawempty > 0
	{
	if Player.drawempty = 10 and Player.ammo[Player.wep_type[Player.wep]] > Player.typ_ammo[Player.wep_type[Player.wep]]-Player.wep_cost[Player.wep]
	snd_play_2d(Player.snd_lowa,0,true,false,10);
	Player.drawempty -= 1

	txt = "LOW ";//+string(Player.typ_name[Player.wep_type[Player.wep]])
	var noenuf = false;
	if Player.ammo[Player.wep_type[Player.wep]] < Player.wep_cost[Player.wep]
	{
		noenuf = true;
	if Player.ammo[Player.wep_type[Player.wep]] > 0
	txt = "NOT ENOUGH ";//+string(Player.typ_name[Player.wep_type[Player.wep]])
	else
	txt = "EMPTY "
	}
	draw_set_halign(fa_left)
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+55,__view_get( e__VW.YView, 0 )+34,string_hash_to_newline(string(txt)))
	draw_text(__view_get( e__VW.XView, 0 )+55,__view_get( e__VW.YView, 0 )+35,string_hash_to_newline(string(txt)))
	draw_text(__view_get( e__VW.XView, 0 )+54,__view_get( e__VW.YView, 0 )+35,string_hash_to_newline(string(txt)))
	draw_set_color(c_red)
	draw_text(__view_get( e__VW.XView, 0 )+54,__view_get( e__VW.YView, 0 )+34,string_hash_to_newline(string(txt)))
	if (noenuf)
	{
	var cl = camera_get_view_x(view_camera[0])+1;
	var cr = cl + camera_get_view_width(view_camera[0])-3;
	var ct = camera_get_view_y(view_camera[0])+1;
	var cb = ct + camera_get_view_height(view_camera[0])-3;
	draw_rectangle(cl,ct,cr,cb,true);
	}
	draw_set_color(c_white)
	draw_sprite(sprAmmoIconsEmpty,Player.wep_type[Player.wep] - 1,
	__view_get( e__VW.XView, 0 )+54+(string_width(string_hash_to_newline(string(txt)))),
	__view_get( e__VW.YView, 0 )+34);
	
	}


	//LOW HP

	if Player.my_health <= 4 and Player.my_health != Player.maxhealth and sin(wave) > 0 and Player.drawlowhp > 0
	{
	Player.drawlowhp -= 1
	txt = "LOW HP"
	draw_set_halign(fa_left)
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+111,__view_get( e__VW.YView, 0 )+7,string_hash_to_newline(string(txt)))
	draw_text(__view_get( e__VW.XView, 0 )+111,__view_get( e__VW.YView, 0 )+8,string_hash_to_newline(string(txt)))
	draw_text(__view_get( e__VW.XView, 0 )+110,__view_get( e__VW.YView, 0 )+8,string_hash_to_newline(string(txt)))
	draw_set_color(c_red)
	var cl = camera_get_view_x(view_camera[0])+1;
	var cr = cl + camera_get_view_width(view_camera[0])-3;
	var ct = camera_get_view_y(view_camera[0])+1;
	var cb = ct + camera_get_view_height(view_camera[0])-3;
	draw_rectangle(cl,ct,cr,cb,true);
	draw_rectangle(cl+2,ct+2,cr-2,cb-2,true);
	draw_text(__view_get( e__VW.XView, 0 )+110,__view_get( e__VW.YView, 0 )+7,string_hash_to_newline(string(txt)))
	draw_set_color(c_white)
	}

	

	}
	else if !instance_exists(GenCont) && !instance_exists(PlayerSpawn)
	{
	scrDrawGameOver()
	}


	draw_set_halign(fa_center)
	draw_set_font(fntM)

	if instance_exists(Player){

	if instance_exists(WepPickup)
	{

	if point_distance(Player.x,Player.y,instance_nearest(Player.x,Player.y,WepPickup).x,instance_nearest(Player.x,Player.y,WepPickup).y)<35
	{
	//

	//PICKUP STUFF
	if instance_exists(Player.targetPickup)
	{
	if Player.targetPickup.visible == true
	with Player.targetPickup
	{

	draw_sprite(sprEPickup,UberCont.opt_gamepad,x,y-7)
	if type = 1{
	draw_sprite(sprBulletIconBG,2,x+7,y-21)
	draw_sprite(sprBulletIcon,7-ceil((Player.ammo[type]/Player.typ_amax[type])*7),x+7,y-21)}
	if type = 2{
	draw_sprite(sprShotIconBG,2,x+7,y-21)
	draw_sprite(sprShotIcon,7-ceil((Player.ammo[type]/Player.typ_amax[type])*7),x+7,y-21)}
	if type = 3{
	draw_sprite(sprBoltIconBG,2,x+7,y-21)
	draw_sprite(sprBoltIcon,7-ceil((Player.ammo[type]/Player.typ_amax[type])*7),x+7,y-21)}
	if type = 4{
	draw_sprite(sprExploIconBG,2,x+7,y-21)
	draw_sprite(sprExploIcon,7-ceil((Player.ammo[type]/Player.typ_amax[type])*7),x+7,y-21)}
	if type = 5{
	draw_sprite(sprEnergyIconBG,2,x+7,y-21)
	draw_sprite(sprEnergyIcon,7-ceil((Player.ammo[type]/Player.typ_amax[type])*7),x+7,y-21)}

//wep_area[Player.wep]
/*
	draw_set_color(c_black)
	draw_text(x,y-30,string_hash_to_newline(string(name)))
	draw_text(x+1,y-30,string_hash_to_newline(string(name)))
	draw_text(x+1,y-31,string_hash_to_newline(string(name)))
	draw_set_color(c_white)
	draw_text(x,y-31,string_hash_to_newline(string(name)))*/
	//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
		//draw_set_halign(fa_left)
	var ny = y-30;
	//Eagle eyes weptier
		var tier = string(wep_area[wep]);
		if tier >= 0//eagle eyes
		{
			var spaceBetweenStarAndText = 4;
			var ty = y-40;
			var tierSprite = sprWepTier;
			var sw = string_width(tier)+spaceBetweenStarAndText;
			var tx = x-(sw*0.25)//string_width(string_hash_to_newline(string(name)));
			var txa = tx + sw;
			if curse > 0
			{
				var col = draw_set_color(make_colour_rgb(136,36,174));
				var n = string_hash_to_newline(string(name));
				
				draw_text(x+2,ny,n)
				draw_text(x+2,ny-2,n)
				draw_text(x+2,ny-1,n)
				draw_text(x+2,ny+1,n)
				
				draw_text(x,ny,n)
				draw_text(x,ny-2,n)
				draw_text(x,ny-1,n)
				draw_text(x,ny+1,n)
				
				draw_text(x-1,ny,n)
				draw_text(x-1,ny-2,n)
				draw_text(x-1,ny-1,n)
				draw_text(x-1,ny+1,n)
			}
			draw_set_color(c_black)
			draw_text(x,ny,string_hash_to_newline(string(name)))
			draw_text(x+1,ny,string_hash_to_newline(string(name)))
			draw_text(tx,ty,tier)
			draw_text(tx+1,ty,tier)
			draw_text(tx+1,ty-1,tier)
			draw_text(x+1,ny-1,string_hash_to_newline(string(name)))
			draw_set_color(c_white)
			draw_text(x,ny-1,string_hash_to_newline(string(name)))
			draw_text(tx,ty-1,tier)
			draw_sprite(tierSprite,0,txa,ty+1);
		}
		else
		{
			draw_set_color(c_black)
			draw_text(x,ny,string_hash_to_newline(string(name)))
			draw_text(x+1,ny,string_hash_to_newline(string(name)))
			draw_text(x+1,ny-1,string_hash_to_newline(string(name)))
			draw_set_color(c_white)
			draw_text(x,ny-1,string_hash_to_newline(string(name)))
		}
	}
	}
	}}

	//VENUS CAR
	with CarVenusFixed
	{
	if place_meeting(x,y,Player)
	{
	draw_sprite(sprEPickup,UberCont.opt_gamepad,x,y-7)

	draw_set_color(c_black)
	draw_text(x,y-30,string_hash_to_newline(string(name)))
	draw_text(x+1,y-30,string_hash_to_newline(string(name)))
	draw_text(x+1,y-31,string_hash_to_newline(string(name)))
	draw_set_color(c_white)
	draw_text(x,y-31,string_hash_to_newline(string(name)))
	//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
	}
	}

	with RerollStation
	{
		if place_meeting(x,y,Player) && active
		{
			draw_sprite(sprEPickup,UberCont.opt_gamepad,x,y-8)

			draw_set_color(c_black)
			draw_text(x,y-40,string_hash_to_newline(string(name)))
			draw_text(x+1,y-40,string_hash_to_newline(string(name)))
			draw_text(x+1,y-41,string_hash_to_newline(string(name)))
			draw_set_color(c_white)
			draw_text(x,y-41,string_hash_to_newline(string(name)))
			//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
		}
	}
	//SHROOM
	with BigMushroom
	{
		if place_meeting(x,y,Player)
		{
		draw_sprite(sprEPickup,UberCont.opt_gamepad,x,y-7)

		draw_set_color(c_black)
		draw_text(x,y-30,string_hash_to_newline(string(name)))
		draw_text(x+1,y-30,string_hash_to_newline(string(name)))
		draw_text(x+1,y-31,string_hash_to_newline(string(name)))
		draw_set_color(c_white)
		draw_text(x,y-31,string_hash_to_newline(string(name)))
		//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
		}
	}
	with BigVultureSkull
	{
		if place_meeting(x,y,Player) && spr_idle == sprBigVultureSkullOpen
		{
			draw_sprite(sprEPickup,UberCont.opt_gamepad,x,y-7)

			draw_set_color(c_black)
			draw_text(x,y-30,string_hash_to_newline(string(name)))
			draw_text(x+1,y-30,string_hash_to_newline(string(name)))
			draw_text(x+1,y-31,string_hash_to_newline(string(name)))
			draw_set_color(c_white)
			draw_text(x,y-31,string_hash_to_newline(string(name)))
			//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
		}
	}
	with BigFishSkull
	{
		if place_meeting(x,y,Player) && loops > 0 && spr_idle = sprBigFishSkullOpen
		{
			draw_sprite(sprEPickup,UberCont.opt_gamepad,x,y-7)

			draw_set_color(c_black)
			draw_text(x,y-30,string_hash_to_newline(string(name)))
			draw_text(x+1,y-30,string_hash_to_newline(string(name)))
			draw_text(x+1,y-31,string_hash_to_newline(string(name)))
			draw_set_color(c_white)
			draw_text(x,y-31,string_hash_to_newline(string(name)))
			//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
		}
	}
	with PinkSheep
	{
		if place_meeting(x,y,Player) && Player.area != 8
		{
			draw_sprite(sprEPickup,UberCont.opt_gamepad,x,y-7)

			draw_set_color(c_black)
			draw_text(x,y-30,string_hash_to_newline(string(name)))
			draw_text(x+1,y-30,string_hash_to_newline(string(name)))
			draw_text(x+1,y-31,string_hash_to_newline(string(name)))
			draw_set_color(c_white)
			draw_text(x,y-31,string_hash_to_newline(string(name)))
			//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
		}
	}
	with DragonSkull
	{
		if place_meeting(x,y,Player) && spr_idle == sprHotDrakeSkullIdleOpen
		{
			draw_sprite(sprEPickup,UberCont.opt_gamepad,x,y-7)

			draw_set_color(c_black)
			draw_text(x,y-30,string_hash_to_newline(string(name)))
			draw_text(x+1,y-30,string_hash_to_newline(string(name)))
			draw_text(x+1,y-31,string_hash_to_newline(string(name)))
			draw_set_color(c_white)
			draw_text(x,y-31,string_hash_to_newline(string(name)))
			//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
		}
	}
	with MushroomLandEntrance
	{
		if place_meeting(x,y,Player) && Player.wepmod1 != 0
		{
			draw_sprite(sprEPickup,UberCont.opt_gamepad,x,y-7)

			draw_set_color(c_black)
			draw_text(x,y-30,string_hash_to_newline(string(name)))
			draw_text(x+1,y-30,string_hash_to_newline(string(name)))
			draw_text(x+1,y-31,string_hash_to_newline(string(name)))
			draw_set_color(c_white)
			draw_text(x,y-31,string_hash_to_newline(string(name)))
			//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
		}
	}
	with SurvivalArenaStarter
	{
		if place_meeting(x,y,Player)
		{
		draw_sprite(sprEPickup,UberCont.opt_gamepad,x,y-7)

		draw_set_color(c_black)
		draw_text(x,y-48,string_hash_to_newline(string(name)))
		draw_text(x+1,y-48,string_hash_to_newline(string(name)))
		draw_text(x+1,y-49,string_hash_to_newline(string(name)))
		draw_set_color(c_white)
		draw_text(x,y-49,string_hash_to_newline(string(name)))
		//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
		}
	}
	with BossReward
	{
		if active && place_meeting(x,y,Player)
		{
			draw_sprite(sprEPickup,UberCont.opt_gamepad,x,y-12)
			draw_set_color(c_black)
			draw_text(x,y-42,string_hash_to_newline(string(name)))
			draw_text(x+1,y-42,string_hash_to_newline(string(name)))
			draw_text(x+1,y-43,string_hash_to_newline(string(name)))
			draw_set_color(c_white)
			draw_text(x,y-43,string_hash_to_newline(string(name)))
			//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
		}
	}
	with SaveStation
	{
		if active && place_meeting(x,y,Player)
		{
			if Player.my_health > 0 && UberCont.lastSaveLoop != Player.loops
				draw_sprite(sprEPickup,UberCont.opt_gamepad,x,y-12)
			draw_set_color(c_black)
			draw_text(x,y-45,string_hash_to_newline(string(name)))
			draw_text(x+1,y-45,string_hash_to_newline(string(name)))
			draw_text(x+1,y-46,string_hash_to_newline(string(name)))
			draw_set_color(c_white)
			draw_text(x,y-46,string_hash_to_newline(string(name)))
			//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
		}
	}
	with BecomeBallBoss
	{
		if available && place_meeting(x,y,Player)
		{
			if canStart
				draw_sprite(sprEPickup,UberCont.opt_gamepad,x,y-12)

			draw_set_color(c_black)
			draw_text(x,y-42,string_hash_to_newline(string(name)))
			draw_text(x+1,y-42,string_hash_to_newline(string(name)))
			draw_text(x+1,y-43,string_hash_to_newline(string(name)))
			draw_set_color(c_white)
			draw_text(x,y-43,string_hash_to_newline(string(name)))
			//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
		}
	}
	with JungleFrozenPlant
	{
		if place_meeting(x,y,Player)
		{
		draw_sprite(sprEPickup,UberCont.opt_gamepad,x,y-7)

		draw_set_color(c_black)
		draw_text(x,y-30,string_hash_to_newline(string(name)))
		draw_text(x+1,y-30,string_hash_to_newline(string(name)))
		draw_text(x+1,y-31,string_hash_to_newline(string(name)))
		draw_set_color(c_white)
		draw_text(x,y-31,string_hash_to_newline(string(name)))
		//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
		}
	}

	with WeaponMod
	{
		if place_meeting(x,y,Player) && Player.wep != 0
		{
			draw_sprite(sprEPickup,UberCont.opt_gamepad,x+8,y)

			draw_set_color(c_black)
			draw_text(x+16,y,string_hash_to_newline(string(name)))
			draw_text(x+17,y,string_hash_to_newline(string(name)))
			draw_text(x+17,y-1,string_hash_to_newline(string(name)))
			draw_set_color(c_white)
			draw_text(x+16,y-1,string_hash_to_newline(string(name)))
			//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			holdExplainTimer ++;
			//Ultra mod destription
			if holdExplainTimer > 30
			{
				var yy = y + 32;
				draw_set_color(c_black)
				draw_text(x+16,yy,string_hash_to_newline(string(moddescription)))
				draw_text(x+17,yy,string_hash_to_newline(string(moddescription)))
				draw_text(x+17,yy-1,string_hash_to_newline(string(moddescription)))
				draw_set_color(c_white)
				draw_text(x+16,yy-1,string_hash_to_newline(string(moddescription)))
			}
		}
		else
		{
			holdExplainTimer = 0;	
		}
	}
	with UltraMod
	{
		if place_meeting(x,y,Player)
		{
			var rstring = "";
			var lstring = "";
			if swapper == -1
			{
				rstring = ultramodName[1];
				lstring = ultramodName[0];
			}
			else
			{
				rstring = ultramodName[0];
				lstring = ultramodName[1];
			}
			var yy = y - 32;
			var btw = " <=> ";
			var btwh = string_width(btw)*0.5;
			draw_sprite(sprEPickup,UberCont.opt_gamepad,x,yy-4)
			draw_set_color(c_black)
			draw_set_halign(fa_left);
			var xx = x - ( string_width(lstring) + btwh)
			draw_text(xx,yy,lstring)
			draw_text(xx+1,yy,lstring)
			draw_text(xx+1,yy-1,lstring)
			draw_set_color(c_white)
			draw_text(xx,yy-1,lstring)
			xx = x - btwh;
			draw_set_color(c_black)
			draw_text(xx,yy,btw)
			draw_text(xx+1,yy,btw)
			draw_text(xx+1,yy-1,btw)
			draw_set_color(c_white)
			draw_text(xx,yy-1,btw)
			xx = x + btwh//+ ( string_width(lstring) + (string_width(" <SWAP> ")*0.5))
			draw_set_color(c_black)
			draw_text(xx,yy,rstring)
			draw_text(xx+1,yy,rstring)
			draw_text(xx+1,yy-1,rstring)
			draw_set_color(c_white)
			draw_text(xx,yy-1,rstring)
			draw_set_halign(fa_center)
			
			holdExplainTimer ++;
			//Ultra mod destription
			if holdExplainTimer > 30
			{
				yy = y + 16;
				draw_text(x,yy,ultramodDescription);
				draw_set_color(c_black)
				draw_text(x,yy,ultramodDescription)
				draw_text(x+1,yy,ultramodDescription)
				draw_text(x+1,yy-1,ultramodDescription)
				draw_set_color(c_white)
				draw_text(x,yy-1,ultramodDescription)
			}
		}
		else
		{
			holdExplainTimer = 0;	
		}
	}

	with ProtoStatue
	{
	if place_meeting(x,y,Player)
	{
	draw_sprite(sprEPickup,UberCont.opt_gamepad,x+8,y)


	draw_set_color(c_black)
	draw_text(x+16,y,string_hash_to_newline("CLOSE CROWNVAULT"))
	draw_text(x+17,y,string_hash_to_newline("CLOSE CROWNVAULT"))
	draw_text(x+17,y-1,string_hash_to_newline("CLOSE CROWNVAULT"))
	draw_set_color(c_white)
	draw_text(x+16,y-1,string_hash_to_newline("CLOSE CROWNVAULT"))
	//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
	}
	}

	}
	//grid
	//with Floor
	//draw_rectangle(x,y,x+32,y+32,1)
	}


	if instance_exists(enemy) && instance_number(enemy) + instance_number(becomenemy) < instance_number(IDPDVan) + 2
	{
		var t = undefined;
		if !instance_exists(enemy)
		{
			if instance_exists(RavenFly)
			{
				t = RavenFly;
			} else if instance_exists(InvertedRavenFly)
			{
				t = InvertedRavenFly;
			} else if instance_exists(LilHunterFly)
			{
				t = LilHunterFly;
			} else if instance_exists(InvertedLilHunterFly)
			{
				t = InvertedLilHunterFly;
			} else if instance_exists(becomenemy) && becomenemy.object_index != WantBoss
			{
				t = becomenemy;
			} else if instance_exists(CanSpawnBoss)
			{
				t = CanSpawnBoss;
			}
		}
		with enemy
		{
			if object_index != IDPDVan && object_index != IDPDVanVertical
			{
				t = id;
			}
		}
		if t != undefined
		{
			var xx = t.x;
			var yy = t.y;
			var vx = camera_get_view_x(view_camera[0]);
			var vw = camera_get_view_width(view_camera[0]);
			var shouldDraw = false;
			if xx >  vx + vw
			{
				xx = vx + vw-5;
				shouldDraw = true;
			}
			else if xx < vx
			{
				xx = vx+5;
				shouldDraw = true;
			}
			var vy = camera_get_view_y(view_camera[0]);
			var vh = camera_get_view_height(view_camera[0]);
			if yy >  vy + vh
			{
				yy = vy + vh-5;
				shouldDraw = true;
			}
			else if yy < vy
			{
				yy = vy+5;
				shouldDraw = true;
			}
			if shouldDraw
				draw_sprite(sprLastEnemyIndicator,0,xx,yy);
		}
	}
}
