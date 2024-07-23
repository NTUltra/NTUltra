function scrDrawHUD() {
	if instance_exists(DataRef)
	{
		var dataRef = DataRef;
	}
	else if instance_exists(Player)
	{
		var dataRef = Player;
		if instance_exists(Credits) || scrIsGamemode(3)
			exit;
	}
	else
	{
		exit;
	}
	var dt = 1;
	if UberCont.normalGameSpeed == 60
		dt = 0.5;
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	var ox = viewX;
	var oy = viewY;
	var vx = 0//GameRender.viewX;//camera_get_view_x(view_camera[0]);
	var vy = -1//GameRender.viewY;//camera_get_view_y(view_camera[0]);
	var yo = 0;
	if dataRef.race == 9 || dataRef.copyPassive == 9
		yo = 1;
	
	///POPUP TEXT
	with PopupText
	{
		if visible = 1
		{
			var xx = median(vx+__view_get( e__VW.WView, 0 )-10-string_width(string_hash_to_newline(mytext))/2,vx+10+string_width(string_hash_to_newline(mytext))/2,x-ox);
			var yy = median(vy+__view_get( e__VW.HView, 0 )-30+1,vy+20+1,y-oy);
			draw_set_color(c_black)
			draw_text(xx,yy+1,string_hash_to_newline(string(mytext)))
			draw_text(xx+1,yy+1,string_hash_to_newline(string(mytext)))
			draw_text(xx+1,yy,string_hash_to_newline(string(mytext)))
			draw_set_color(theColour)
			draw_sprite(sprt,ii,xx+(string_width(string_hash_to_newline(string(mytext)))*0.5),yy);
			draw_text(xx,median(vy+__view_get( e__VW.HView, 0 )-30,vy+20,y-oy),string_hash_to_newline(string(mytext)))
		}
	}
	with DamageNumbers
	{
		event_user(0);	
	}
	with RageIndicator
	{
		event_user(0);	
	}
	with LevelUp
	draw_sprite(sprite_index,-1,x-ox,y-oy)
	
	
	//DRAW THE HUD HERE
	//HEALTH BAR
	var armourX = 94;
	if !(dataRef.ultra_got[62] && dataRef.altUltra)
	{
		var hx = 20;
		vy -= yo;
		if dataRef.skill_got[36] //Absorbing pores
			hx += 2;
		if dataRef.race == 20 && dataRef.skill_got[dataRef.maxskill + 1]//Piggy bank
		{
			hx += 13;
			hx += 4;
		}
		var isDoc = dataRef.race == 25
		var metaBreak = 3;
		if isDoc
		{
			metaBreak = 2;
			draw_sprite(sprHealtBarMetabolismDoctor,dataRef.metabolism,vx+hx,vy+4)
		}
		else
			draw_sprite(sprHealtBarMetabolism,dataRef.metabolism,vx+hx,vy+4)
		var fill = sprHealthFill;
		if venomized
		{
			fill = sprHealthFillVenom;	
		}
		if dataRef.maxhealth!=0 {
			draw_sprite_ext(fill,2,vx+hx+2,vy+7,clamp(84*(dataRef.lsthealth/dataRef.maxhealth),0,84),1,0,c_white,1)
			draw_sprite_ext(fill,1,vx+hx+2,vy+7,clamp(84*(dataRef.lsthealth/dataRef.maxhealth),0,84),1,0,c_white,1)

			if ((dataRef.sprite_index = dataRef.spr_hurt and dataRef.image_index < 1 and !instance_exists(Portal)) or dataRef.lsthealth < dataRef.my_health) and !instance_exists(GenCont) and !instance_exists(LevCont)
				draw_sprite_ext(fill,0,vx+hx+2,vy+7,clamp(84*(dataRef.lsthealth/dataRef.maxhealth),0,84),1,0,c_white,1)
			else if dataRef.my_health > dataRef.maxhealth
			{
				var maxCap = floor(max(dataRef.maxhealth*2,10));
				if dataRef.my_health >= maxCap
				{
					draw_sprite(sprHealthBar,2,vx+hx+2,vy+7);//Overhealthbar
					draw_sprite_ext(fill,4,vx+hx+2,vy+7,clamp(84*(dataRef.lsthealth/dataRef.maxhealth),0,84),1,0,c_white,1)	
				}
				else
				{
					draw_sprite(sprHealthBar,1,vx+hx+2,vy+7);//Overhealthbar
					draw_sprite_ext(fill,3,vx+hx+2,vy+7,clamp(84*(dataRef.lsthealth/dataRef.maxhealth),0,84),1,0,c_white,1)
				}
			}
		}
		if dataRef.metabolism == metaBreak
			draw_sprite(sprHealtBarMetabolismFull,0,vx+hx,vy+4)
		if dataRef.skill_got[46]//INNER PEACE
		{
			if dataRef.peaceBarriers < dataRef.peaceBarriersMax
			{
				var peaceSpr = sprHealthBarPeace;
				var peaceWidth = lerp(1,sprite_get_width(peaceSpr),dataRef.peaceBarrierTime/max(1,(dataRef.peaceBarrierDuration-1)));
				var peaceHeight = sprite_get_height(peaceSpr);
				var surf = surface_create(peaceWidth,peaceHeight);
				surface_set_target(surf);
				draw_sprite(sprHealthBarPeace,0,0,0);
				surface_reset_target();
				draw_surface(surf,vx+hx,vy+4);
				surface_free(surf);
			}
			if dataRef.race == 25
				draw_sprite(sprHealthBarPeaceFullDoctor,dataRef.peaceBarriers,vx+hx,vy+4);
			else
				draw_sprite(sprHealthBarPeaceFull,dataRef.peaceBarriers,vx+hx,vy+4);
		}
		
		if dataRef.race == 9 || dataRef.copyPassive == 9// Chicken
		{
			var cfbi = 0;
			with ChickenRewindPosition
			{
				if active
					cfbi = 1;
			}
			draw_sprite(sprChickenFocusBar,cfbi,vx+hx,vy+16)
			var focusIndex = 1;
			if dataRef.chickenFocusInUse
				focusIndex = 0;
			else if dataRef.chickenFocusDelayTime > 0
				focusIndex = 2;
			draw_sprite_ext(sprChickenFocusBarFill,focusIndex,vx+hx+2,vy+18,clamp(84*(dataRef.chickenFocus/dataRef.chickenFocusMax),0,84),1,0,c_white,1)
		}
		if dataRef.skill_got[45] && instance_exists(PlayerAlarms3)
		{
			if instance_exists(AdrenalineHeal)
			{
				draw_sprite_ext(sprHealthBarAdrenaline,sprite_get_number(sprHealthBarAdrenaline) - 1,vx+hx,vy+4,1,1,0,c_white,1)
			}
			else
			{
				var adrenalineColour = make_colour_rgb(72,253,8);
				if !PlayerAlarms3.detectedCombat
					adrenalineColour = make_colour_rgb(72,156,17);
				draw_sprite_ext(sprHealthBarAdrenaline,round(lerp(sprite_get_number(sprHealthBarAdrenaline) - 1,0,max(1,PlayerAlarms3.adrenalineHealTimer) / PlayerAlarms3.adrenalineHealCooldown)),vx+hx,vy+4,1,1,0,adrenalineColour,1)
			}
		}
		vy += yo;
		//if dataRef.alarm[3] > 0
		//	draw_sprite(sprHealtBarImmune,0,vx+hx,vy+4)
	}
	else
	{
		armourX = 7;
	}
	if dataRef.race == 22
		armourX += 12;
	if instance_exists(BouncyFatFX)
	{
		draw_sprite(sprLoseAmmoHealth,BouncyFatFX.image_index,vx,vy);	
	}

	//AMMO POPUP ADRENALINE
	with AmmoPopUp
	{
		if visible = 1
		{
			var xxx = round(vx + 62 + xo);
			var yy = round(vy + 34);
			draw_set_color(c_black)
			draw_text(xxx,yy+1,string_hash_to_newline(string(mytext)))
			draw_text(xxx+1,yy+1,string_hash_to_newline(string(mytext)))
			draw_text(xxx+1,yy,string_hash_to_newline(string(mytext)))
			draw_set_color(theColour)
			draw_sprite(sprt,ii,xxx+(string_width(string_hash_to_newline(string(mytext)))*0.5),yy);
			draw_text(xxx,yy,string_hash_to_newline(string(mytext)))
		}
	}

	//VIKING ARMOUR
	var armour = dataRef.armour;
	var maxArmour = dataRef.maxarmour;
	var armo = sprArmour;
	if (dataRef.ultra_got[62] && dataRef.altUltra)
	{
		if venomized
		{
			armo = sprArmourVenom;
		}
	}
	var dir=0;
	repeat(maxArmour)
	{
		dir++;
		draw_sprite(armo,dir > armour ? 1 : 0,vx+armourX+(15*dir),vy+4);
	}
	if dataRef.race == 16 && dataRef.skill_got[5]
	{
		dir++;
		draw_sprite(sprSerpentHUD,dataRef.freeArmourStrike ? 0 : 1,vx+armourX+(15*dir),vy+4);
	}
	if (dataRef.ultra_got[62] && dataRef.altUltra)
	{
		var hx = 22;
		vy -= yo;
		//if dataRef.skill_got[36] //Absorbing pores
		//	hx += 2;
		if dataRef.race == 20 && dataRef.skill_got[dataRef.maxskill + 1]//Piggy bank
		{
			hx += 13;
			hx += 4;
		}
		draw_sprite(sprHealthBarMetbolismArmour,dataRef.metabolism,vx+hx,vy+4)
		var metaBreak = 3;
		if dataRef.metabolism == metaBreak
			draw_sprite(sprHealthBarMetabolismFullArmour,0,vx+hx,vy+4)
		if dataRef.skill_got[46]//INNER PEACE
		{
			if dataRef.peaceBarriers < dataRef.peaceBarriersMax
			{
				var peaceSpr = sprHealthBarPeace;
				var peaceWidth = lerp(1,sprite_get_width(peaceSpr),dataRef.peaceBarrierTime/max(1,(dataRef.peaceBarrierDuration-1)));
				var peaceHeight = sprite_get_height(peaceSpr);
				var surf = surface_create(peaceWidth,peaceHeight);
				surface_set_target(surf);
				draw_sprite(sprHealthBarPeace,0,0,0);
				surface_reset_target();
				draw_surface(surf,vx+hx,vy+4);
				surface_free(surf);
			}
			draw_sprite(sprHealthBarPeaceFullArmour,dataRef.peaceBarriers,vx+hx,vy+4);
		}
	}
	//SKELETON TB
	if dataRef.race == 19 && dataRef.skill_got[5] {
		//skeletonGambleBongas
		draw_sprite(sprSkeletonThronebutt,dataRef.skeletonGambleBongas,vx+115,vy+11)	
	}
	//ROGUE AMMO
	if (dataRef.race=22 || dataRef.copyPassive == 22) && dataRef.ultra_got[88] != 1
	{
		var spr = sprRogueAmmoHUD;
		if dataRef.ultra_got[85]=1
		{
			if dataRef.skill_got[10]
			{
				spr = sprRogueAmmoHUDTBPlus;
			}
			else
			{
				spr = sprRogueAmmoHUDTB;
			}
		}
		else if dataRef.skill_got[10]
		{
			spr = sprRogueAmmoHUDPlus;
			if dataRef.ultra_got[87] && dataRef.altUltra
				spr = sprFreakRogueAmmoHUDPlus;
		}
		else if dataRef.ultra_got[87] && dataRef.altUltra
			spr = sprFreakRogueAmmoHUD;
		draw_sprite(spr,0,vx+115,vy+11)
		draw_sprite(spr,dataRef.rogueammo,vx+115,vy+11)
	}

	//GAMEMODES
	if (!scrIsOnlyNormalGamemode() && !instance_exists(LevCont))
	{
		var xxx = camera_get_view_x(view_camera[0]);
		var yyy = camera_get_view_y(view_camera[0]) + __view_get( e__VW.HView, 0 );
		var s = 18;
		if (mouse_x > xxx && mouse_x < xxx + s && mouse_y < yyy && mouse_y > yyy - s)
		{
			holdExplainGamemode += 2*dt;
			if holdExplainGamemode > 10
				holdExplainGamemode = 10;
			if holdExplainGamemode >= 10
			{
				var gamemodeScrollString = "";
				var al = array_length(UberCont.opt_gamemode)
				for (var i = 0; i < al; i++)
				{
					if (UberCont.opt_gamemode[i] != 0)
					{
						gamemodeScrollString += "["+string_replace_all(UberCont.gamemode[UberCont.opt_gamemode[i]],"#"," ") + "]";
						if i != al - 1
							gamemodeScrollString += "\n";
					}
				}
				scrDrawHelp(gamemodeScrollString);
			}
		}
		var voidX = vx + 2;
		var voidY = vy+__view_get( e__VW.HView, 0 )-2;
		if scrIsGamemode(26)
		{
			if UberCont.isLeaderboardGamemode
				draw_sprite(sprDailyChallengeHUDGamemode,0,vx+2,voidY);
			else
				draw_sprite(sprDailyChallengeHUDRace,0,vx+2,voidY);
				
			voidX += 16;
		}
		else if UberCont.isLeaderboardGamemode
		{
			draw_sprite(sprWeeklyChallengeHUD,0,vx+2,voidY);
			voidX += 16;
		}
		else if scrIsGamemode(27)
		{
			draw_sprite(sprDailyChallengeHUD,0,vx+2,voidY);
			voidX += 16;
		}
		else
		{
			draw_set_colour(c_white);
			draw_sprite(sprGamemodeHUD,0,vx+2,voidY);
			voidX += 16;
			/*
			if scrIsGamemode(17) {
				draw_text(vx+64,vy+__view_get( e__VW.HView, 0 )-8,string(fps_real));
			}
			*/
		}
		var al = array_length(UberCont.voidChallengeGoing);
		for (var vi = 0; vi < al; vi++)
		{
			if UberCont.voidChallengeGoing[vi]
			{
				draw_sprite(sprVoidChallengeIconHUD,vi,voidX,voidY);
				voidX += 14;
			}
		}
		//GUN GAME
		if scrIsGamemode(11)
		{
			var gx = vx + 16;
			var gy = vy+__view_get( e__VW.HView, 0 )-22
			var ggk = floor(dataRef.gunGameKill);
			txt = string(ggk);
			draw_set_halign(fa_left)
			draw_sprite(sprGunGameKill,0,vx+2,gy-3)
			draw_set_color(c_black)
			draw_text(vx+15,gy,string_hash_to_newline(string(txt)))
			draw_text(vx+15,gy+1,string_hash_to_newline(string(txt)))
			draw_text(vx+16,gy+1,string_hash_to_newline(string(txt)))
			if ggk == 3
				draw_set_color(c_yellow);
			else if ggk == 2
				draw_set_color(c_orange);
			else if ggk == 1
				draw_set_colour(c_red);
			else
				draw_set_color(c_white)
			draw_text(vx+16,gy,string_hash_to_newline(string(txt)))
			draw_set_color(c_white)
			var spr = dataRef.wep_sprt[UberCont.nextGunGameWep];
			var alpha = lerp(0.1,1,clamp(dataRef.gunGameKill*0.2,0,1));
			var gx = vx + 4;
			gy -= 22;
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,24,28,gx+1,gy+1,c_white,1);
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,24,28,gx+1,gy-1,c_white,1);
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,24,28,gx-1,gy-1,c_white,1);
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,24,28,gx-1,gy+1,c_white,1);
			draw_sprite_part_smart(spr,0,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,24,28,gx,gy,c_white,1);
			
			var spr = dataRef.wep_sprt[UberCont.nextGunGameWepB];
			gx += 28;
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,24,28,gx+1,gy+1,c_white,1);
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,24,28,gx+1,gy-1,c_white,1);
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,24,28,gx-1,gy-1,c_white,1);
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,24,28,gx-1,gy+1,c_white,1);
			draw_sprite_part_smart(spr,0,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,24,28,gx,gy,c_white,1);
			
		}
	}
	if holdExplainGamemode > 0 
		holdExplainGamemode -= 1*dt;

	//HEALTH TEXT
	vy -= yo;
	draw_set_valign(fa_top)
	draw_set_halign(fa_center)
	if !(dataRef.ultra_got[62] && dataRef.altUltra)
	if (!((dataRef.sprite_index = dataRef.spr_hurt and dataRef.image_index < 1 and !instance_exists(Portal)) or dataRef.lsthealth < dataRef.my_health) or sin(wave) > 0) or instance_exists(GenCont) or instance_exists(LevCont)
	{
		//hx is by default 23
	draw_set_color(c_black)
	draw_text(vx+hx+44,vy+8,string_hash_to_newline(string(dataRef.my_health)+"/"+string(dataRef.maxhealth)))
	draw_text(vx+hx+45,vy+8,string_hash_to_newline(string(dataRef.my_health)+"/"+string(dataRef.maxhealth)))
	draw_text(vx+hx+45,vy+7,string_hash_to_newline(string(dataRef.my_health)+"/"+string(dataRef.maxhealth)))
	draw_set_color(c_white)
	draw_text(vx+hx+44,vy+7,string_hash_to_newline(string(dataRef.my_health)+"/"+string(dataRef.maxhealth)))
	}
	vy += yo;
	var wepcolour = c_white;
	//CASH BAR
	if dataRef.ultra_got[0] && dataRef.altUltra
	{
		var xx =vx+__view_get( e__VW.WView, 0 )-16-16;
		var yy =vy+40;
		var w = 28;
		draw_sprite(sprCashBar,0,xx-2,yy-3)
		if dataRef.cash > 0{
		draw_sprite_ext(sprCashBarFill,2,xx,yy,clamp(w*(dataRef.lstCash/dataRef.maxCash),0,w),1,0,c_white,1)
		draw_sprite_ext(sprCashBarFill,1,xx,yy,clamp(w*(dataRef.lstCash/dataRef.maxCash),0,w),1,0,c_white,1)

		if (dataRef.lstCash < dataRef.cash) and !instance_exists(GenCont) and !instance_exists(LevCont)
			draw_sprite_ext(sprCashBarFill,0,xx,yy,clamp(w*(dataRef.lstCash/dataRef.maxCash),0,w),1,0,c_white,1)
		}
		if dataRef.lstCash >= dataRef.cash or sin(wave) > 0 or instance_exists(GenCont) or instance_exists(LevCont)
		{
			draw_set_color(c_black)
			xx += 14;
			//yy += 8;
			var rc = string(round(dataRef.cash));
			draw_text(xx,yy+1,rc)
			draw_text(xx+1,yy+1,rc)
			draw_text(xx+1,yy,rc)
			draw_set_color(c_white)
			if dataRef.cash < 0
				draw_set_color(c_red);
			draw_text(xx,yy,rc)
		}
	}
	if dataRef.ultra_got[19] && dataRef.altUltra {
		var xx =vx+__view_get( e__VW.WView, 0 )-16-16;
		var yy =vy+40;
		var w = 28;
		draw_sprite(sprKillKillKillHUD,dataRef.canKillKillKill,xx-2,yy-3)	
	}
	//ULTRA ICON
	dir=0;
	dix=0;
	var totalLives = array_length(dataRef.livesRegain);
	if totalLives > 0
	{
	    repeat(totalLives)
	    {
			dix++;
			draw_sprite_ext(sprExtraLivesHud,dataRef.livesRegain[dix-1],vx+__view_get( e__VW.WView, 0 )-16*dix,vy+36,1,1,0,c_white,1);
	    }
	}
	if (dataRef.lastWishPrevent)
	{
		draw_sprite_ext(sprLastWishPrevent,0,vx+__view_get( e__VW.WView, 0 )-16,vy+36,1,1,0,c_white,1);
		if totalLives < 1
			dix++;
	}
	dix ++
	var sheepFakouts = dataRef.sheepFakeouts;
	if sheepFakouts > 0
	{
	    repeat(sheepFakouts)
	    {
			draw_sprite_ext(sprJustASheep,0,vx+__view_get( e__VW.WView, 0 )-16*dix,vy+40,1,1,0,c_white,1);
			dix++;
	    }
	}
	repeat(dataRef.maxultra+2)//+1 because secret trash + 1BECAUSE HORROR EXTRA
	{
	    if dataRef.ultra_got[dir]
	    {
			var xx =vx+__view_get( e__VW.WView, 0 )-12-16*dix;
			var yy =vy+20;
			var xxx = camera_get_view_x(view_camera[0]) + xx;
			var yyy = camera_get_view_y(view_camera[0]) + yy;
			var s = 18;
			if dir == 0 && dataRef.altUltra && dataRef.race == 21
			{
				draw_sprite_ext(sprCashFlowHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 4 && dataRef.altUltra && dataRef.race == 1
			{
				draw_sprite_ext(sprFishCanGunHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 6 && dataRef.altUltra && dataRef.race == 2
			{
				draw_sprite_ext(sprCrystalCursedUltraHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 9 && dataRef.altUltra && dataRef.race == 3
			{
				draw_sprite_ext(sprEyesStrangeStyleHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 10 && dataRef.altUltra && dataRef.race == 3
			{
				draw_sprite_ext(sprVoidStyleHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 13 && dataRef.altUltra && dataRef.race == 4
			{
				draw_sprite_ext(sprDeathStareHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 18 && dataRef.altUltra && dataRef.race == 5
			{
				draw_sprite_ext(sprPlantPhotosynthesisHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 19 && dataRef.altUltra && dataRef.race == 5
			{
				draw_sprite_ext(sprPlantKillKillKillHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 20 && dataRef.altUltra && dataRef.race == 5
			{
				draw_sprite_ext(sprPlantSonicSpeedHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 27 && dataRef.altUltra && dataRef.race == 7
			{
				draw_sprite_ext(sprSteroidsPunchSwapHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 29 && (dataRef.altUltra)  && dataRef.race == 8
			{
				draw_sprite_ext(sprExclusiveTasteHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 30 && (dataRef.altUltra)  && dataRef.race == 8
			{
				draw_sprite_ext(sprCursedTechonologyHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 33 && dataRef.altUltra && dataRef.race == 9
			{
				draw_sprite_ext(sprPhoenixHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 35 && dataRef.altUltra && dataRef.race == 9
			{
				draw_sprite_ext(sprReverseFocusHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 39 && dataRef.altUltra && dataRef.race == 10
			{
				draw_sprite_ext(sprBigRebelHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 43 && dataRef.altUltra && dataRef.race == 11
			{
				draw_sprite_ext(sprSniperEyeHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 47 && dataRef.altUltra && dataRef.race == 12
			{
				draw_sprite_ext(sprGreenTeamHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 50 && dataRef.altUltra && dataRef.race == 13
			{
				draw_sprite_ext(sprSASHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 51 && dataRef.altUltra && dataRef.race == 13
			{
				draw_sprite_ext(sprHypnotizeHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 55 && dataRef.altUltra && dataRef.race == 14
			{
				draw_sprite_ext(sprInconsistentIncompatabilityHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 59 && dataRef.altUltra && dataRef.race == 15
			{
				draw_sprite_ext(sprPathOfDestructionHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 61 && dataRef.altUltra && dataRef.race == 16
			{
				draw_sprite_ext(sprCaptainOfTheKrakenHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 62 && dataRef.altUltra && dataRef.race == 16
			{
				draw_sprite_ext(sprLivingArmourHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 66 && dataRef.altUltra && dataRef.race == 17
			{
				draw_sprite_ext(sprQuickSwapperHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 68 && dataRef.altUltra && dataRef.race == 17
			{
				draw_sprite_ext(sprEnginuityHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 72 && dataRef.altUltra && dataRef.race == 18
			{
				draw_sprite_ext(sprMirrorHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 74 && dataRef.altUltra && dataRef.race == 19
			{
				draw_sprite_ext(sprReminisceHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 77 && dataRef.altUltra && dataRef.race == 20
			{
				draw_sprite_ext(sprHoardingThiefHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 96 && dataRef.altUltra && dataRef.race == 24
			{
				draw_sprite_ext(sprAirLordHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 97 && dataRef.altUltra && dataRef.race == 25
			{
				draw_sprite_ext(sprBeeKeeperHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 104 && dataRef.altUltra && dataRef.race == 26
			{
				draw_sprite_ext(sprGrumpyLectureHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 106 && dataRef.altUltra && dataRef.bskin == 1 && dataRef.race == 27
			{
				draw_sprite_ext(sprHothandsHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 107 && dataRef.altUltra && dataRef.bskin == 2 && dataRef.race == 27
			{
				draw_sprite_ext(sprExplosiveHandsHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 76 && (dataRef.altUltra || dataRef.ultimategamble) && dataRef.race == 19
			{
				draw_sprite_ext(sprUltimateGambleIconHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 21 && dataRef.altUltra && dataRef.race == 6
			{
				draw_sprite_ext(sprYvVenuzianAirhornHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 23 && dataRef.altUltra && dataRef.race == 6
			{
				draw_sprite_ext(sprYVBlasphemyHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 24 && dataRef.altUltra && dataRef.race == 6
			{
				draw_sprite_ext(sprYvGodsDontDieHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 87 && dataRef.altUltra && dataRef.race == 22
			{
				draw_sprite_ext(sprFreakRogueHUD,0,xx,yy,1,1,0,c_white,1);
			}
			else if dir == 92 && dataRef.altUltra && dataRef.race == 23
			{
				draw_sprite_ext(sprSpikedFrogHUD,0,xx,yy,1,1,0,c_white,1);
			}
		    else {//if !(dir=79 && dataRef.race=21){//Horror don't draw skeleton's ultra
				draw_sprite_ext(sprUltraIconHUD,dir,xx,yy,1,1,0,c_white,1);
			}
			if (mouse_x > xxx && mouse_x < xxx + s && mouse_y > yyy && mouse_y < yyy + s)
			{
				holdExplainMutation += 2*dt;
				if holdExplainMutation > 10
					holdExplainMutation = 10;
				if holdExplainMutation >= 10
				{
					if (dir == 33 && dataRef.altUltra)
					{
						scrDrawHelp("["+dataRef.ultra_name[dir]+"][" + string(dataRef.phoenixrevives) + "]\n"+dataRef.ultra_text[dir]);
					}
					else
					{
						scrDrawHelp("["+dataRef.ultra_name[dir]+"]\n"+dataRef.ultra_text[dir]);
					}
				}
			}
			dix+=1
			
	    }
	dir+=1;
	}
	//SKILL ICONS
	vy -= yo;
	dix = 0;
	dir = 0;
	var extraSpace = 12 - (max(-1,dataRef.maxarmour-1-dataRef.hudArmourSpace))
	if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
		extraSpace += 6;
		
	if dataRef.totalSkills > extraSpace
	{
		var cdir = 0;
		var fs = 0;
		repeat(dataRef.maxskill+1)
		{
			if dataRef.skill_got[cdir] == 1
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
	repeat(dataRef.maxskill+2)
	{
		if dataRef.skill_got[dir] = 1 && dix < extraSpace
		{
			var xx = vx+__view_get( e__VW.WView, 0 )-10-16*dix;
			var xxx = camera_get_view_x(view_camera[0]) + xx;
			var yy = vy+12;
			var yyy = camera_get_view_y(view_camera[0]) + yy;
			var s = 8;
			draw_sprite_ext(sprSkillIconHUD,dir,xx,yy+1,1,1,0,c_black,1)
			draw_sprite_ext(sprSkillIconHUD,dir,xx,yy,1,1,0,c_white,1)
			dix += 1
			if (mouse_x > xxx-s && mouse_x < xxx + s && mouse_y > yyy-s && mouse_y < yyy + s)
			{
				var ht;
				if dir == 28//RAGE
					ht = "["+dataRef.skill_name[dir]+"] ["+string(dataRef.rage)+"/500]\n"+dataRef.skill_text[dir];//MAX RAGE
				else
					ht = "["+dataRef.skill_name[dir]+"]\n"+dataRef.skill_text[dir];
				
				holdExplainMutation +=2*dt;
				if holdExplainMutation >= 10
				{
					scrDrawHelp(ht);
					if dataRef.race == 25 && dataRef.skill_bons[dir] != ""
					{
						//DOCTOR BONUS
						txt = string_replace_all(ht,"#"," ");
						var w = 206;
						var s = string_height("A");
						scrDrawHelp(dataRef.skill_bons[dir], string_height_ext(txt,s,w)+2,c_lime);
					}
				}
				
				if holdExplainMutation > 10
					holdExplainMutation = 10;
			}
		}
		dir += 1
		if dir > dataRef.maxskill + 1
			dir = 0;
	}
	var dal = array_length(UberCont.skillDeposit)
	if dal > 0
	{
		var dir = 0;
		repeat(dal)
		{
			var skillIndex = UberCont.skillDeposit[dir];
			if dix < extraSpace
			{
				var xx = vx+__view_get( e__VW.WView, 0 )-10-16*dix;
				var xxx = camera_get_view_x(view_camera[0]) + xx;
				var yy = vy+12;
				var yyy = camera_get_view_y(view_camera[0]) + yy;
				var s = 8;
				draw_sprite_ext(sprSkillIconHUD,skillIndex,xx,yy+1,1,1,0,c_black,1)
				draw_sprite_ext(sprSkillIconHUD,skillIndex,xx,yy,1,1,0,c_dkgray,1)
				dix += 1
				if (mouse_x > xxx-s && mouse_x < xxx + s && mouse_y > yyy-s && mouse_y < yyy + s)
				{
					var ht;
					if dir == 28//RAGE
						ht = "DISABLED\n["+dataRef.skill_name[skillIndex]+"] ["+string(dataRef.rage)+"/500]\n"+dataRef.skill_text[skillIndex];//MAX RAGE
					else
						ht = "DISABLED\n["+dataRef.skill_name[skillIndex]+"]\n"+dataRef.skill_text[skillIndex];
				
					holdExplainMutation +=2*dt;
					if holdExplainMutation >= 10
					{
						scrDrawHelp(ht);
						if dataRef.race == 25 && dataRef.skill_bons[skillIndex] != ""
						{
							//DOCTOR BONUS
							txt = string_replace_all(ht,"#"," ");
							var w = 206;
							var s = string_height("A");
							scrDrawHelp(dataRef.skill_bons[skillIndex], string_height_ext(txt,s,w)+2,c_lime);
						}
					}
				
					if holdExplainMutation > 10
						holdExplainMutation = 10;
				}
			}
			dir += 1
		}
	}
	if holdExplainMutation > 0
		holdExplainMutation -= 1*dt;
	
	vy += yo*4;
	var puffColour = make_colour_rgb(250,171,0);//make_colour_rgb(178,122,0);
	var puffA = 0.8
	var loadColour = c_white//make_colour_rgb(255,225,200);//make_colour_rgb(255,174,0);
	var loadA = 0.35;
	var loadedColour = c_gray//make_colour_rgb(102,69,0);//make_colour_rgb(127,87,0);
	//TERTIARY WEAPON
	if dataRef.cwep != 0 && dataRef.ultra_got[31]//robot ultra c
	{
	var spr, col, wid;
	spr = dataRef.wep_sprt[dataRef.cwep]
	wid = 16
	if dataRef.wep_type[dataRef.cwep] = 0
	wid = 32
	col = c_dkgray

	//Wepon
	if dataRef.ccurse==1
	col=make_colour_rgb(136,36,174);//curse
	else if (scrCheckGold(dataRef.wep_name[dataRef.cwep]))
	col=make_colour_rgb(223,201,134);//gold
	else if (scrCheckUltra(dataRef.wep_name[dataRef.cwep]))
	col=make_colour_rgb(72,253,8);//ultra baby
	var wxx = vx+110;
	var wyy = vy+16;
	var ss = 20;
	var xxx = camera_get_view_x(view_camera[0]) + wxx;
	var yyy = camera_get_view_y(view_camera[0]) + wyy;
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+110,vy+16,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+112,vy+16,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+111,vy+15,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+111,vy+17,col,1)
	
	var wwep = dataRef.cwep;
	var pcc = dataRef.cqueueshot;
	var pci = 0;
	var pcsw = min(wid*0.5,(sprite_get_width(spr)-sprite_get_xoffset(spr))*0.5);
	var fillw = min(wid,2+sprite_get_width(spr));
	if dataRef.creload < 0 && dataRef.wep_load[wwep] != 0
	{
		pci = dataRef.creload/dataRef.wep_load[wwep]
		pci = 1+pci;
		pci = pci-floor(pci)
	}
	if dataRef.creload > dataRef.wep_load[wwep]
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+111,vy+16,c_red,1)
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(dataRef.creload,1-(dataRef.wep_load[dataRef.cwep]/dataRef.creload))),14,vx+111,vy+16,loadColour,loadA)
	}
	else if dataRef.creload > 0
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+111,vy+16,c_black,1)
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(dataRef.wep_load[dataRef.cwep],1-(dataRef.creload/dataRef.wep_load[dataRef.cwep]))),14,vx+111,vy+16,loadColour,loadA)
	}
	else if dataRef.creload != 0
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+111,vy+16,loadedColour,1)
		if pcc == 2
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+111,vy+16,puffColour,puffA)
		else if pcc == 1
		{
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,pcsw,14,vx+111,vy+16,puffColour,puffA)
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(dataRef.wep_load[wwep],1-pci)),14,vx+111,vy+16,loadColour,loadA)
		}
		else
		{
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(dataRef.wep_load[wwep],1-pci)),14,vx+111,vy+16,loadColour,loadA)
		}
	}
	else
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+111,vy+16,loadedColour,1)	
	}
	
	if dataRef.wep_type[dataRef.cwep] != 0
	{
	draw_set_halign(fa_left)
	draw_set_color(c_black)
	var cam = round(dataRef.ammo[dataRef.wep_type[dataRef.cwep]]);
	var txx = 130;
	if cam < 0
	{
		var cAmmo = string_replace(string(cam),"-","");
		txx += 3;
	}
	else
		var cAmmo = string(cam)
	draw_text(vx+txx,vy+22,cAmmo)
	draw_text(vx+txx+1,vy+22,cAmmo)
	draw_text(vx+txx+1,vy+21,cAmmo)
	if dataRef.wep_type[dataRef.wep] = dataRef.wep_type[dataRef.cwep]
	draw_set_color(c_white)
	else
	draw_set_color(c_silver)
	if dataRef.ammo[dataRef.wep_type[dataRef.cwep]] <= dataRef.typ_ammo[dataRef.wep_type[dataRef.cwep]]
	{
	if dataRef.wep_type[dataRef.wep] = dataRef.wep_type[dataRef.cwep]
	draw_set_color(c_red)
	else
	draw_set_color(c_gray)
	}
	if dataRef.ammo[dataRef.wep_type[dataRef.cwep]] <= 0
	draw_set_color(c_dkgray)
	if cam < 0
	{
		draw_sprite(sprMinus,0,vx+txx,vy+21);
	}
	draw_text(vx+txx,vy+21,cAmmo)
	}
	if (UberCont.opt_hud_des && mouse_x > xxx && mouse_x < xxx+ss && mouse_y < yyy+ss && mouse_y > yyy)
	{
		var wepName = dataRef.wep_name[dataRef.cwep];
		wepName += scrTranslateWeaponAutoType(dataRef.wep_auto[dataRef.cwep]);
		if dataRef.wep_area[dataRef.cwep] >= 0
		{
			scrDrawHelp("  " + string(dataRef.wep_area[dataRef.cwep])
			+ "\n" + wepName);
			scrDrawHelp("\n" + string(dataRef.wep_name[dataRef.cwep]),0,c_white,true);
			draw_sprite(sprWepTier,0,vx+118,vy+22);
		}
		else
		{
			scrDrawHelp("\n" + wepName);
			scrDrawHelp("\n" + string(dataRef.wep_name[dataRef.cwep]),0,c_white,true);
		}
	}
	}


	//SECONDARY WEAPON
	if dataRef.bwep != 0
	{
	var spr, col, wid;
	spr = dataRef.wep_sprt[dataRef.bwep]
	wid = 16
	if dataRef.wep_type[dataRef.bwep] = 0
	wid = 32
	col = c_dkgray
	if dataRef.race = 7
	col = c_white

	//wepon
	if instance_exists(YVCantQuickReload)
		col = c_red;
	else if dataRef.bcurse==1
		col=make_colour_rgb(136,36,174);//curse
	else if (scrCheckGold(dataRef.wep_name[dataRef.bwep]))
		col=make_colour_rgb(223,201,134);//gold
	else if (scrCheckUltra(dataRef.wep_name[dataRef.bwep]))
		col=make_colour_rgb(72,253,8);//ultra baby
	var wxx = vx+67;
	var wyy = vy+16;
	var xxx = camera_get_view_x(view_camera[0]) + wxx;
	var yyy = camera_get_view_y(view_camera[0]) + wyy;
	var ss = 20;
	
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+67,vy+16,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+69,vy+16,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+68,vy+15,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+68,vy+17,col,1)

	var wwep = dataRef.bwep;
	var pcc = dataRef.bqueueshot;
	var pci = 0;
	var pcsw = min(wid*0.5,(sprite_get_width(spr)-sprite_get_xoffset(spr))*0.5);
	var fillw = min(wid,2+sprite_get_width(spr));
	if dataRef.breload < 0 && dataRef.wep_load[wwep] != 0
	{
		pci = dataRef.breload/dataRef.wep_load[wwep]
		pci = 1+pci;
		pci = pci-floor(pci)
	}
	if dataRef.breload > dataRef.wep_load[wwep]
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+68,vy+16,c_red,1)
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(dataRef.breload,1-(dataRef.wep_load[wwep]/dataRef.breload))),14,vx+68,vy+16,loadColour,loadA)
	}
	else if dataRef.breload > 0
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+68,vy+16,c_black,1)
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(dataRef.wep_load[wwep],1-(dataRef.breload/dataRef.wep_load[wwep]))),14,vx+68,vy+16,loadColour,loadA)
	}
	else if dataRef.breload != 0
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+68,vy+16,loadedColour,1)
		if pcc == 2
		{
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+68,vy+16,puffColour,puffA)
		}
		else if pcc == 1
		{
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,pcsw,14,vx+68,vy+16,puffColour,puffA)
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(dataRef.wep_load[wwep],1-pci)),14,vx+68,vy+16,loadColour,loadA)
		}
		else
		{
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(dataRef.wep_load[wwep],1-pci)),14,vx+68,vy+16,loadColour,loadA)	
		}
	}
	else
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+68,vy+16,loadedColour,1)	
	}
	if (UberCont.opt_hud_des && mouse_x > xxx && mouse_x < xxx+ss && mouse_y < yyy+ss && mouse_y > yyy)
	{
		var wepName = dataRef.wep_name[dataRef.bwep];
		wepName += scrTranslateWeaponAutoType(dataRef.wep_auto[dataRef.bwep]);
		if dataRef.wep_area[dataRef.bwep] >= 0
		{
			scrDrawHelp("  " + string(dataRef.wep_area[dataRef.bwep])
			+ "\n" + wepName);
			scrDrawHelp("\n" + string(dataRef.wep_name[dataRef.bwep]),0,c_white,true);
			draw_sprite(sprWepTier,0,vx+118,vy+22);
		}
		else
		{
			scrDrawHelp("\n" + wepName);
			scrDrawHelp("\n" + string(dataRef.wep_name[dataRef.bwep]),0,c_white,true);
		}
	}


	if dataRef.wep_type[dataRef.bwep] != 0
	{
	draw_set_halign(fa_left)
	draw_set_color(c_black)
	var bam = round(dataRef.ammo[dataRef.wep_type[dataRef.bwep]]);
	var txx = 86;
	if bam < 0
	{
		var bAmmo = string_replace(string(bam),"-","");
		txx += 3;
	}
	else
		var bAmmo = string(bam)
	draw_text(vx+txx,vy+22,bAmmo)
	draw_text(vx+txx+1,vy+22,bAmmo)
	draw_text(vx+txx+1,vy+21,bAmmo)
	if dataRef.race = 7 or dataRef.wep_type[dataRef.wep] = dataRef.wep_type[dataRef.bwep] || instance_exists(UseSecondaryAmmo)
	draw_set_color(c_white)
	else
	draw_set_color(c_silver)
	if dataRef.ammo[dataRef.wep_type[dataRef.bwep]] <= dataRef.typ_ammo[dataRef.wep_type[dataRef.bwep]]
	{
	if dataRef.race = 7 or dataRef.wep_type[dataRef.wep] = dataRef.wep_type[dataRef.bwep]
	draw_set_color(c_red)
	else
	draw_set_color(c_gray)
	}
	if dataRef.ammo[dataRef.wep_type[dataRef.bwep]] <= 0
	draw_set_color(c_dkgray)
	if bam < 0
	{
		draw_sprite(sprMinus,0,vx+txx,vy+21);
	}
	draw_text(vx+txx,vy+21,bAmmo)
	}
	}


	//PRIMARY WEAPON
	var spr, wid;
	spr = dataRef.wep_sprt[dataRef.wep]
	wid = 16
	if dataRef.wep_type[dataRef.wep] = 0
	wid = 32

	wepcolour=c_white;
	if dataRef.curse==1
	wepcolour=make_colour_rgb(136,36,174);//curse
	else if (scrCheckGold(dataRef.wep_name[dataRef.wep]))
	wepcolour=make_colour_rgb(223,201,134);//gold
	else if (scrCheckUltra(dataRef.wep_name[dataRef.wep]))
	wepcolour=make_colour_rgb(72,253,8);//ultra baby
	var wxx = vx+24;
	var wyy = vy+16;
	var xxx = camera_get_view_x(view_camera[0]) + wxx;
	var yyy = camera_get_view_y(view_camera[0]) + wyy;
	var ss = 20;
	

	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+24,vy+16+1,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+22,vy+16+1,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+23,vy+17+1,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+23,vy+15+1,c_black,1)
	
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+25,vy+16+1,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+23,vy+16+1,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+24,vy+17+1,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+24,vy+15+1,c_black,1)
	
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+25,vy+16,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+23,vy+16,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+24,vy+17,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+24,vy+15,c_black,1)
	
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+24,vy+16,wepcolour,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+22,vy+16,wepcolour,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+23,vy+17,wepcolour,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+23,vy+15,wepcolour,1)
	
	var wwep = dataRef.wep;
	var pcc = dataRef.queueshot;
	var pci = 0;
	var pcsw = min(wid*0.5,(sprite_get_width(spr)-sprite_get_xoffset(spr))*0.5);
	var fillw = min(wid,2+sprite_get_width(spr));
	if dataRef.reload < 0 && dataRef.wep_load[wwep] != 0
	{
		pci = dataRef.reload/dataRef.wep_load[wwep]
		pci = 1+pci;
		pci = pci-floor(pci)
	}
	if dataRef.reload > dataRef.wep_load[wwep]
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+23,vy+16,c_red,1)
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(dataRef.reload,1-(dataRef.wep_load[wwep]/dataRef.reload))),14,vx+23,vy+16,loadColour,loadA)
	}
	else if dataRef.reload > 0
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+23,vy+16,c_black,1)
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(dataRef.wep_load[wwep],1-(dataRef.reload/dataRef.wep_load[wwep]))),14,vx+23,vy+16,loadColour,loadA)
	}
	else if dataRef.reload != 0
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+23,vy+16,loadedColour,1)
		if pcc == 1
		{
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,pcsw,14,vx+23,vy+16,puffColour,puffA)
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(dataRef.wep_load[wwep],1-pci)),14,vx+23,vy+16,loadColour,loadA)
		}
		else if pcc == 2
		{
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+23,vy+16,puffColour,1)
		} else
		{
			draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,fillw*min(dataRef.wep_load[wwep],1-pci)),14,vx+23,vy+16,loadColour,loadA)	
		}
	}
	else
	{
		draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,vx+23,vy+16,loadedColour,1)	
	}
	if (UberCont.opt_hud_des && mouse_x > xxx && mouse_x < xxx+ss && mouse_y < yyy+ss && mouse_y > yyy)
	{
		var wepName = dataRef.wep_name[dataRef.wep];
		wepName += scrTranslateWeaponAutoType(dataRef.wep_auto[dataRef.wep]);
		if dataRef.wep_area[dataRef.wep] >= 0
		{
			scrDrawHelp("  " + string(dataRef.wep_area[dataRef.wep])
			+ "\n" + wepName);
			scrDrawHelp("\n" + string(dataRef.wep_name[dataRef.wep]),0,c_white,true);
			draw_sprite(sprWepTier,0,vx+118,vy+22);
		}
		else
		{
			scrDrawHelp("\n" + wepName);
			scrDrawHelp("\n" + string(dataRef.wep_name[dataRef.wep]),0,c_white,true);
		}
	}
	
	if dataRef.isPermanent
	{
		var xx = 4;
		if dataRef.wepmod1 != 0
			xx += 10;
		if dataRef.wepmod2 != 0
			xx += 10;
		if dataRef.wepmod3 != 0
			xx += 10;
		if dataRef.wepmod4 != 0
			xx += 10;
		draw_sprite(sprInfiniteWeapon,0,vx+xx,vy+44);
	}
	
	//Debug
	/*
	if UberCont.public = 0 && instance_exists(Player)
	{
		var xx = vx+14
		var yy = vy+60
		draw_text(xx+32,yy,"reload: "+string(dataRef.reload));
		draw_text(xx+32,yy,"\nbreload: "+string(dataRef.breload));
	}
	*/
	
	//Ultramod
	if dataRef.ultramod != 0
	{
		var xx = vx+14
		var yy = vy+60
		var h = 16*0.5;
		var w = 24*0.5;
		var xxx = camera_get_view_x(view_camera[0]) + xx;
		var yyy = camera_get_view_y(view_camera[0]) + yy;
		if (mouse_x > xxx-w && mouse_x < xxx+w && mouse_y < yyy+h && mouse_y > yyy-h)
		{
			var umn = scrUltraModName(dataRef.ultramod);
			holdExplainUltraModTimer += 1*dt;
			if holdExplainUltraModTimer > 30
			{
				scrDrawHelp(umn[0] + " <=> " + umn[1]+"\n"+scrUltraModDescription(dataRef.ultramod));
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
		draw_sprite(sprUltraModIcon,dataRef.ultramod,xx,yy);
	}
	//WEAPON MODS!
	var xx = vx+2;
	var yy = vy+43;
	var xs = 10;
	var noHover = true;
	if dataRef.wepmod1 != 0
	{
		draw_sprite(sprModHUD,dataRef.wepmod1,xx,yy);
		var xxx = camera_get_view_x(view_camera[0]) + xx;
		var yyy = camera_get_view_y(view_camera[0]) + yy;
		if (mouse_x > xxx && mouse_x < xxx+xs && mouse_y < yyy+xs && mouse_y > yyy)
		{
			noHover = false;
			holdExplainWepModTimer += 1*dt;
			if holdExplainWepModTimer > 30
			{
				scrDrawHelp(scrWepModName(dataRef.wepmod1)
				+ "\n" + scrWepModDescription(dataRef.wepmod1));
			}
			else
			{
				scrDrawHelp(scrWepModName(dataRef.wepmod1));
			}
		}
	}
	xx += xs;
	if dataRef.wepmod2 != 0
	{
		draw_sprite(sprModHUD,dataRef.wepmod2,xx,yy);
		var xxx = camera_get_view_x(view_camera[0]) + xx;
		var yyy = camera_get_view_y(view_camera[0]) + yy;
		if (noHover && mouse_x > xxx && mouse_x < xxx+xs && mouse_y < yyy+xs && mouse_y > yyy)
		{
			noHover = false;
			holdExplainWepModTimer += 1*dt;
			if holdExplainWepModTimer > 30
			{
				scrDrawHelp(scrWepModName(dataRef.wepmod2)
				+ "\n" + scrWepModDescription(dataRef.wepmod2));
			}
			else
			{
				scrDrawHelp(scrWepModName(dataRef.wepmod2));
			}
		}
	}
	xx += xs;
	if dataRef.wepmod3 != 0
	{
		draw_sprite(sprModHUD,dataRef.wepmod3,xx,yy);
		var xxx = camera_get_view_x(view_camera[0]) + xx;
		var yyy = camera_get_view_y(view_camera[0]) + yy;
		if (noHover && mouse_x > xxx && mouse_x < xxx+xs && mouse_y < yyy+xs && mouse_y > yyy)
		{
			noHover = false;
			holdExplainWepModTimer += 1*dt;
			if holdExplainWepModTimer > 30
			{
				scrDrawHelp(scrWepModName(dataRef.wepmod3)
				+ "\n" + scrWepModDescription(dataRef.wepmod3));
			}
			else
			{
				scrDrawHelp(scrWepModName(dataRef.wepmod3));
			}
		}
	}
	xx += xs;
	if dataRef.wepmod4 != 0
	{
		draw_sprite(sprModHUD,dataRef.wepmod4,xx,yy);
		var xxx = camera_get_view_x(view_camera[0]) + xx;
		var yyy = camera_get_view_y(view_camera[0]) + yy;
		if (noHover && mouse_x > xxx && mouse_x < xxx+xs && mouse_y < yyy+xs && mouse_y > yyy)
		{
			noHover = false;
			holdExplainWepModTimer += 1*dt;
			if holdExplainWepModTimer > 30
			{
				scrDrawHelp(scrWepModName(dataRef.wepmod4)
				+ "\n" + scrWepModDescription(dataRef.wepmod4));
			}
			else
			{
				scrDrawHelp(scrWepModName(dataRef.wepmod4));
			}
		}
	}
	if noHover
	{
		holdExplainWepModTimer = 0;
	}
	if dataRef.wep_type[dataRef.wep] != 0
	{
	var aam = round(dataRef.ammo[dataRef.wep_type[dataRef.wep]]);
	var txx = 42;
	if aam < 0
	{
		var aAmmo = string_replace(string(aam),"-","");
		txx += 3;
	}
	else
		var aAmmo = string(aam)
	draw_set_halign(fa_left)
	draw_set_color(c_black)
	draw_text(vx+txx,vy+22,aAmmo)
	draw_text(vx+txx+1,vy+22,aAmmo)
	draw_text(vx+txx+1,vy+21,aAmmo)

	draw_set_color(c_white)
	if dataRef.ammo[dataRef.wep_type[dataRef.wep]] <= dataRef.typ_ammo[dataRef.wep_type[dataRef.wep]]
	draw_set_color(c_red)
	if dataRef.ammo[dataRef.wep_type[dataRef.wep]] <= 0
	draw_set_color(c_dkgray)
	if aam < 0
	{
		draw_sprite(sprMinus,0,vx+txx,vy+21);
	}
	draw_text(vx+txx,vy+21,aAmmo)
	}



	//EXPERIENCE BAR
	draw_set_halign(fa_center)
	
	with dataRef
	{
		var maxRad = GetPlayerMaxRad();	
	}
	var ro = 4;
	var rto = 11;
	if dataRef.skill_got[36]//Absorbing pores
	{
		ro = 1;//-3
		rto = 9 //-3;
		draw_sprite(sprAbsorbingRadBar,(dataRef.radPickedUp/dataRef.maxRadPickedUp)*18,vx+ 16,vy+4)	
	}
	if dataRef.race == 20 && dataRef.skill_got[dataRef.maxskill + 1]//Piggy bank
	{
		ro = 1;//-3
		rto = 9 //-3;
		var px = vx + 16;
		if dataRef.skill_got[36]
			px += 6;
		draw_sprite(sprPiggyBankHUD,(dataRef.piggyBank/dataRef.maxPiggyBank)*12,px,vy+4)	
	}
	if dataRef.skillpoints > 0
		draw_sprite(sprExpBarLevel,0,vx+ro,vy+4)
	draw_sprite(sprExpBar,(dataRef.rad/maxRad)*16,vx+ro,vy+4)
	var lvl = dataRef.level
	if lvl != 10
	{
		draw_set_color(c_black)
		draw_text(vx+rto,vy+17-string_height(string_hash_to_newline("A"))/2,string_hash_to_newline(string(lvl)))
		draw_text(vx+rto+1,vy+17-string_height(string_hash_to_newline("A"))/2,string_hash_to_newline(string(lvl)))
		draw_text(vx+rto+1,vy+16-string_height(string_hash_to_newline("A"))/2,string_hash_to_newline(string(lvl)))
		draw_set_color(c_white)
		draw_text(vx+rto,vy+16-string_height(string_hash_to_newline("A"))/2,string_hash_to_newline(string(lvl)))
	}
	else
	{
		draw_sprite(sprUltraLevel,0,vx+rto,vy+16);
	}
	//GOOD O'L HUMPHRY SKILL
	if dataRef.race == 26 || dataRef.copyPassive == 26
	{
		txt = string(floor(dataRef.humphrySkill));
		draw_set_halign(fa_left)
		draw_sprite(sprHumphrySkill,0,vx+2,vy+66)
		draw_set_color(c_black)
		draw_text(vx+17,vy+68,string_hash_to_newline(string(txt)))
		draw_text(vx+16,vy+69,string_hash_to_newline(string(txt)))
		draw_text(vx+17,vy+69,string_hash_to_newline(string(txt)))

		if instance_exists(PlayerAlarms) && PlayerAlarms.alarm[7] > 0 || (instance_exists(HumphryDiscipline) && !(dataRef.altUltra && dataRef.ultra_got[104]))
			draw_set_color(c_red)
		else
			draw_set_color(c_white)
		draw_text(vx+16,vy+68,string_hash_to_newline(string(txt)))

		draw_set_color(c_white)
	}
	

	var ammoheight;
	ammoheight=31;//34


	//AMMO ICONS
	img = 0
	var hump = instance_exists(HumphryDiscipline) && dataRef.altUltra && dataRef.ultra_got[104]
	if (dataRef.race == 26 && hump && dataRef.wep_type[dataRef.wep] != 1 && dataRef.wep_type[dataRef.bwep] != 1)
	{
		img = 3
	}
	else if dataRef.wep_type[dataRef.wep] = 1 or (dataRef.race = 7 and dataRef.wep_type[dataRef.bwep] = 1)
	{img = 2}
	else if dataRef.wep_type[dataRef.bwep] = 1
	{img = 1}
	if dataRef.ammo[1] < 0
		img = 3;
	draw_sprite(sprBulletIconBG,img,vx+2,vy+ammoheight)
	draw_sprite(sprBulletIcon,clamp(7-ceil((dataRef.ammo[1]/dataRef.typ_amax[1])*7),-1,7)+1,vx+2,vy+ammoheight)//36

	img = 0
	if (dataRef.race == 26 && hump && dataRef.wep_type[dataRef.wep] != 2 && dataRef.wep_type[dataRef.bwep] != 2)
	{
		img = 3
	}
	else if dataRef.wep_type[dataRef.wep] = 2 or (dataRef.race = 7 and dataRef.wep_type[dataRef.bwep] = 2)
	{img = 2}
	else if dataRef.wep_type[dataRef.bwep] = 2
	{img = 1}
	if dataRef.ammo[2] < 0
		img = 3;
	draw_sprite(sprShotIconBG,img,vx+12,vy+ammoheight)
	draw_sprite(sprShotIcon,clamp(7-ceil((dataRef.ammo[2]/dataRef.typ_amax[2])*7),-1,7)+1,vx+12,vy+ammoheight)

	img = 0
	if (dataRef.race == 26 && hump && dataRef.wep_type[dataRef.wep] != 3 && dataRef.wep_type[dataRef.bwep] != 3)
	{
		img = 3
	}
	else if dataRef.wep_type[dataRef.wep] = 3 or (dataRef.race = 7 and dataRef.wep_type[dataRef.bwep] = 3)
	{img = 2}
	else if dataRef.wep_type[dataRef.bwep] = 3
	{img = 1}
	if dataRef.ammo[3] < 0
		img = 3;
	draw_sprite(sprBoltIconBG,img,vx+22,vy+ammoheight)
	draw_sprite(sprBoltIcon,clamp(7-ceil((dataRef.ammo[3]/dataRef.typ_amax[3])*7),-1,7)+1,vx+22,vy+ammoheight)

	img = 0
	if (dataRef.race == 26 && hump && dataRef.wep_type[dataRef.wep] != 4 && dataRef.wep_type[dataRef.bwep] != 4)
	{
		img = 3
	}
	else if dataRef.wep_type[dataRef.wep] = 4 or (dataRef.race = 7 and dataRef.wep_type[dataRef.bwep] = 4)
	{img = 2}
	else if dataRef.wep_type[dataRef.bwep] = 4 
	{img = 1}
	if dataRef.ammo[4] < 0
		img = 3;
	draw_sprite(sprExploIconBG,img,vx+32,vy+ammoheight)
	draw_sprite(sprExploIcon,clamp(7-ceil((dataRef.ammo[4]/dataRef.typ_amax[4])*7),-1,7)+1,vx+32,vy+ammoheight)

	img = 0
	if (dataRef.race == 26 && hump && dataRef.wep_type[dataRef.wep] != 5 && dataRef.wep_type[dataRef.bwep] != 5)
	{
		img = 3
	}
	else if dataRef.wep_type[dataRef.wep] = 5 or (dataRef.race = 7 and dataRef.wep_type[dataRef.bwep] = 5)
	{img = 2}
	else if dataRef.wep_type[dataRef.bwep] = 5 
	{img = 1}
	if dataRef.ammo[5] < 0
		img = 3;
	draw_sprite(sprEnergyIconBG,img,vx+42,vy+ammoheight)
	draw_sprite(sprEnergyIcon,clamp(7-ceil((dataRef.ammo[5]/dataRef.typ_amax[5])*7),-1,7)+1,vx+42,vy+ammoheight)

	//LOW AMMO WARNING

	if dataRef.wep_type[dataRef.wep] > 0 && dataRef.ammo[dataRef.wep_type[dataRef.wep]] <= dataRef.typ_ammo[dataRef.wep_type[dataRef.wep]] and sin(wave) > 0 and dataRef.drawempty > 0
	{
		if dataRef.drawempty == 10 and dataRef.ammo[dataRef.wep_type[dataRef.wep]] > dataRef.typ_ammo[dataRef.wep_type[dataRef.wep]]-dataRef.wep_cost[dataRef.wep]
			snd_play_2d(dataRef.snd_lowa,0,true,false,10);
	if UberCont.normalGameSpeed == 60
		dataRef.drawempty -= 0.5;
	else
		dataRef.drawempty -= 1

	txt = "LOW ";//+string(dataRef.typ_name[dataRef.wep_type[dataRef.wep]])
	var noenuf = false;
	if dataRef.ammo[dataRef.wep_type[dataRef.wep]] < dataRef.wep_cost[dataRef.wep]
	{
		noenuf = true;
	if dataRef.ammo[dataRef.wep_type[dataRef.wep]] > 0
	txt = "NOT ENOUGH ";//+string(dataRef.typ_name[dataRef.wep_type[dataRef.wep]])
	else
	txt = "EMPTY "
	}
	draw_set_halign(fa_left)
	draw_set_color(c_black)
	draw_text(vx+55,vy+34,string_hash_to_newline(string(txt)))
	draw_text(vx+55,vy+35,string_hash_to_newline(string(txt)))
	draw_text(vx+54,vy+35,string_hash_to_newline(string(txt)))
	draw_set_color(c_red)
	draw_text(vx+54,vy+34,string_hash_to_newline(string(txt)))
	if (noenuf)
	{
	var cl = camera_get_view_x(view_camera[0])+1;
	var cr = cl + camera_get_view_width(view_camera[0])-3;
	var ct = camera_get_view_y(view_camera[0])+1;
	var cb = ct + camera_get_view_height(view_camera[0])-3;
	draw_rectangle(cl,ct,cr,cb,true);
	}
	draw_set_color(c_white)
	draw_sprite(sprAmmoIconsEmpty,dataRef.wep_type[dataRef.wep] - 1,
	vx+54+(string_width(string_hash_to_newline(string(txt)))),
	vy+34);
	
	}


	//LOW HP

	if dataRef.my_health <= 4 and dataRef.my_health != dataRef.maxhealth and sin(wave) > 0 and dataRef.drawlowhp > 0
	{
	dataRef.drawlowhp -= 1
	txt = "LOW HP"
	draw_set_halign(fa_left)
	draw_set_color(c_black)
	draw_text(vx+111,vy+7,string_hash_to_newline(string(txt)))
	draw_text(vx+111,vy+8,string_hash_to_newline(string(txt)))
	draw_text(vx+110,vy+8,string_hash_to_newline(string(txt)))
	draw_set_color(c_red)
	var cl = camera_get_view_x(view_camera[0])+1;
	var cr = cl + camera_get_view_width(view_camera[0])-3;
	var ct = camera_get_view_y(view_camera[0])+1;
	var cb = ct + camera_get_view_height(view_camera[0])-3;
	draw_rectangle(cl,ct,cr,cb,true);
	draw_rectangle(cl+2,ct+2,cr-2,cb-2,true);
	draw_text(vx+110,vy+7,string_hash_to_newline(string(txt)))
	draw_set_color(c_white)
	}

	

	
	draw_set_halign(fa_center)

	if instance_exists(Player) && !instance_exists(GenCont) && !instance_exists(LevCont)
	{
		if instance_exists(Player.targetPickup) && Player.targetPickup != noone && Player.targetPickup.alarm[1] < 1
		{
			var prange = 36;
			if Player.ultra_got[66] && Player.altUltra
				prange = 48;
			if point_distance(Player.x,Player.y,Player.targetPickup.x,Player.targetPickup.y) < prange
			{
				if Player.targetPickup.visible == true
				with Player.targetPickup
				{
					var xx = x-ox
					var yy = y-oy;
					draw_sprite(sprEPickup,UberCont.opt_gamepad,xx,yy-7)
					if type = 1{
					draw_sprite(sprBulletIconBG,2,xx+7,yy-21)
					draw_sprite(sprBulletIcon,clamp(7-ceil((Player.ammo[type]/Player.typ_amax[type])*7),-1,7)+1,xx+7,yy-21)}
					if type = 2{
					draw_sprite(sprShotIconBG,2,xx+7,yy-21)
					draw_sprite(sprShotIcon,clamp(7-ceil((Player.ammo[type]/Player.typ_amax[type])*7),-1,7)+1,xx+7,yy-21)}
					if type = 3{
					draw_sprite(sprBoltIconBG,2,xx+7,yy-21)
					draw_sprite(sprBoltIcon,clamp(7-ceil((Player.ammo[type]/Player.typ_amax[type])*7),-1,7)+1,xx+7,yy-21)}
					if type = 4{
					draw_sprite(sprExploIconBG,2,xx+7,yy-21)
					draw_sprite(sprExploIcon,clamp(7-ceil((Player.ammo[type]/Player.typ_amax[type])*7),-1,7)+1,xx+7,yy-21)}
					if type = 5{
					draw_sprite(sprEnergyIconBG,2,xx+7,yy-21)
					draw_sprite(sprEnergyIcon,clamp(7-ceil((Player.ammo[type]/Player.typ_amax[type])*7),-1,7)+1,xx+7,yy-21)}
					var ny = yy-30;
					//Eagle eyes weptier
					var tier = string(wep_area[wep]);
					if wep_area[wep] >= 0//eagle eyes
					{
						var spaceBetweenStarAndText = 4;
						var ty = yy-40;
						var tierSprite = sprWepTier;
						var sw = string_width(tier)+spaceBetweenStarAndText;
						var tx = xx-(sw*0.25)//string_width(string_hash_to_newline(string(name)));
						var txa = tx + sw;
						if curse > 0
						{
							draw_set_color(make_colour_rgb(136,36,174));
							var n = string_hash_to_newline(string(name));
				
							draw_text(xx+2,ny,n)
							draw_text(xx+2,ny-2,n)
							draw_text(xx+2,ny-1,n)
							draw_text(xx+2,ny+1,n)
				
							draw_text(xx,ny,n)
							draw_text(xx,ny-2,n)
							draw_text(xx,ny-1,n)
							draw_text(xx,ny+1,n)
				
							draw_text(xx-1,ny,n)
							draw_text(xx-1,ny-2,n)
							draw_text(xx-1,ny-1,n)
							draw_text(xx-1,ny+1,n)
						}
						draw_set_color(c_black)
						draw_text(xx,ny,string_hash_to_newline(string(name)))
						draw_text(xx+1,ny,string_hash_to_newline(string(name)))
						draw_text(tx,ty,tier)
						draw_text(tx+1,ty,tier)
						draw_text(tx+1,ty-1,tier)
						draw_text(xx+1,ny-1,string_hash_to_newline(string(name)))
						draw_set_color(c_white)
						draw_text(xx,ny-1,string_hash_to_newline(string(name)))
						draw_text(tx,ty-1,tier)
						draw_sprite(tierSprite,0,txa,ty+1);
					}
					else
					{
						draw_set_color(c_black)
						draw_text(xx,ny,string_hash_to_newline(string(name)))
						draw_text(xx+1,ny,string_hash_to_newline(string(name)))
						draw_text(xx+1,ny-1,string_hash_to_newline(string(name)))
						draw_set_color(c_white)
						draw_text(xx,ny-1,string_hash_to_newline(string(name)))
					}
				}
			}
		}

		//VENUS CAR
		with CarVenusFixed
		{
			if place_meeting(x,y,Player)
			{
				if (instance_exists(WantBoss) || instance_exists(BigFish) || instance_exists(AssassinBoss))
				{
					var txt = "DEFEAT BOSS FIRST";
					draw_set_color(c_black)
					draw_text(x-ox,y-oy-30,txt)
					draw_text(x-ox+1,y-oy-30,txt)
					draw_text(x-ox+1,y-oy-31,txt)
					draw_set_color(c_white)
					draw_text(x-ox,y-oy-31,txt)
				}
				else
				{
					draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-7)

					draw_set_color(c_black)
					draw_text(x-ox,y-oy-30,string_hash_to_newline(string(name)))
					draw_text(x-ox+1,y-oy-30,string_hash_to_newline(string(name)))
					draw_text(x-ox+1,y-oy-31,string_hash_to_newline(string(name)))
					draw_set_color(c_white)
					draw_text(x-ox,y-oy-31,string_hash_to_newline(string(name)))
					//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
				}
			}
		}

		with RerollStation
		{
			if place_meeting(x,y,Player) && !used
			{
				draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-8)

				draw_set_color(c_black)
				draw_text(x-ox,y-oy-40,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-40,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-41,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(x-ox,y-oy-41,string_hash_to_newline(string(name)))
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		//SHROOM
		with InteractableProp
		{
			if isInteractableNow
			{
				if (instance_exists(WantBoss) || instance_exists(AssassinBoss) || instance_exists(InvertedAssassinBoss) || instance_exists(SandWorm) || instance_exists(Technomancer))
				{
					var txt = "DEFEAT BOSS FIRST";
					draw_set_color(c_black)
					draw_text(x-ox,y-oy-30,txt)
					draw_text(x-ox+1,y-oy-30,txt)
					draw_text(x-ox+1,y-oy-31,txt)
					draw_set_color(c_white)
					draw_text(x-ox,y-oy-31,txt)
				}
				else
				{
					if object_index == UltraScrapyardEntrance
					{
						explainTimer += 1*dt;
						var yy = y - oy - 22;
						draw_sprite(sprEPickup,UberCont.opt_gamepad,x,yy-2)
		
						draw_set_color(c_black)
						draw_text(x-ox,yy,string_hash_to_newline(string(name)))
						draw_text(x-ox + 1,yy,string_hash_to_newline(string(name)))
						draw_text(x-ox + 1,yy-1,string_hash_to_newline(string(name)))
						draw_set_color(c_white)
						draw_text(x-ox,yy-1,string_hash_to_newline(string(name)))
			
						if explainTimer > 20 && !notGoodEnough
						{
							var mr = 620;
							with dataRef
								mr = GetPlayerMaxRad();
							var helpText = "YOU HAVE " + string((Player.rad/mr)*100) + "% RADS";
							yy = y - oy + 14;
							draw_set_color(c_black)
							draw_text(x-ox,yy,string_hash_to_newline(string(helpText)))
							draw_text(x-ox+1,yy,string_hash_to_newline(string(helpText)))
							draw_text(x-ox+1,yy-1,string_hash_to_newline(string(helpText)))
							draw_set_color(c_white)
							draw_text(x-ox,yy-1,string_hash_to_newline(string(helpText)))
						}
					}
					else
					{
						draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-7)
						draw_set_color(c_black)
						draw_text(x-ox,y-oy-30,string_hash_to_newline(string(name)))
						draw_text(x-ox+1,y-oy-30,string_hash_to_newline(string(name)))
						draw_text(x-ox+1,y-oy-31,string_hash_to_newline(string(name)))
						draw_set_color(c_white)
						draw_text(x-ox,y-oy-31,string_hash_to_newline(string(name)))
					}
				}
			} else
			{
				explainTimer = 0;	
			}
		}
		with CloudEnterance
		{
			if !used && cAlpha > 0 && place_meeting(x,y,Player) && hasEnoughMuts
			{
				draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-7)

				draw_set_color(c_black)
				draw_text(x-ox,y-oy-30,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-30,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-31,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(x-ox,y-oy-31,string_hash_to_newline(string(name)))
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with HQEnterance
		{
			if place_meeting(x,y,Player)
			{
				draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-7)

				draw_set_color(c_black)
				draw_text(x-ox,y-oy-30,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-30,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-31,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(x-ox,y-oy-31,string_hash_to_newline(string(name)))
			}
		}
		with MimicBossPlateau
		{
			if !used && place_meeting(x,y,Player)
			{
				draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-7)

				draw_set_color(c_black)
				draw_text(x-ox,y-oy-30,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-30,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-31,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(x-ox,y-oy-31,string_hash_to_newline(string(name)))
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with AnyMutationStation
		{
			if place_meeting(x,y,Player)
			{
				draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-12)

				draw_set_color(c_black)
				draw_text(x-ox,y-oy-48,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-48,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-49,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(x-ox,y-oy-49,string_hash_to_newline(string(name)))
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with InversionActivator
		{
			if active && place_meeting(x,y,Player)
			{
				draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-32)

				draw_set_color(c_black)
				draw_text(x-ox,y-oy-64,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-64,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-65,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(x-ox,y-oy-65,string_hash_to_newline(string(name)))
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with PatienceStation
		{
			if place_meeting(x,y,Player)
			{
				draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-12)

				draw_set_color(c_black)
				draw_text(x-ox,y-oy-48,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-48,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-49,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(x-ox,y-oy-49,string_hash_to_newline(string(name)))
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with EndGameThrone
		{
			if active && place_meeting(x,y,Player)
			{
				draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox-2,y-oy-44)

				draw_set_color(c_black)
				var yy = 84;
				draw_text(x-ox-2,y-oy-yy,string_hash_to_newline(string(name)))
				draw_text(x-ox-2+1,y-oy-yy,string_hash_to_newline(string(name)))
				draw_text(x-ox-2+1,y-oy-yy-1,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(x-ox-2,y-oy-yy-1,string_hash_to_newline(string(name)))
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with InversionShard
		{
			if place_meeting(x,y,Player) && !collected
			{
				draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-10)

				draw_set_color(c_black)
				draw_text(x-ox,y-oy-33,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-33,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-34,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(x-ox,y-oy-34,string_hash_to_newline(string(name)))
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with InversionShardReward
		{
			if place_meeting(x,y,Player) && !UberCont.collectedInversionShardReward
			{
				if UberCont.collectedInversionShards > 2
					draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-12)

				draw_set_color(c_black)
				draw_text(x-ox,y-oy-35,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-35,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-36,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(x-ox,y-oy-36,string_hash_to_newline(string(name)))
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with HintGiver {
			var h = string_height(string_hash_to_newline(string(hint)));
			var yy = y-oy-18 - h
			var xx = x-ox-2;
			if place_meeting(x,y,Player)
			{
				if alarm[3] > 0
				{
					if hasASecret
						draw_sprite(sprEPickup,UberCont.opt_gamepad,xx,yy-7 + h)
			
					draw_set_color(c_black)
					draw_text(xx,yy-30,string_hash_to_newline(string(hint)))
					draw_text(xx+1,yy-30,string_hash_to_newline(string(hint)))
					draw_text(xx+1,yy-31,string_hash_to_newline(string(hint)))
					draw_set_color(c_white)
					draw_text(xx,yy-31,string_hash_to_newline(string(hint)))
				}
				else if active && sprite_index == spr_idle
				{
			
					draw_sprite(sprEPickup,UberCont.opt_gamepad,xx,yy-7)

					draw_set_color(c_black)
					draw_text(xx,yy-30,string_hash_to_newline(string(name)))
					draw_text(xx+1,yy-30,string_hash_to_newline(string(name)))
					draw_text(xx+1,yy-31,string_hash_to_newline(string(name)))
					draw_set_color(c_white)
					draw_text(xx,yy-31,string_hash_to_newline(string(name)))
				}
			}
		}
		with CrownVaultExit
		{
			if place_meeting(x,y,Player)
			{
				var yy = y-oy-18;
				var xx = x-ox-2;
				draw_sprite(sprEPickup,UberCont.opt_gamepad,xx,yy-7)

				draw_set_color(c_black)
				draw_text(xx,yy-30,string_hash_to_newline(string(name)))
				draw_text(xx+1,yy-30,string_hash_to_newline(string(name)))
				draw_text(xx+1,yy-31,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(xx,yy-31,string_hash_to_newline(string(name)))
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with CrownVaultSecretExit
		{
			if place_meeting(x,y,Player)
			{
				var yy = y-oy-18;
				var xx = x-ox-2;
				draw_sprite(sprEPickup,UberCont.opt_gamepad,xx,yy-7)

				draw_set_color(c_black)
				draw_text_transformed(xx,yy-30,string_hash_to_newline(string(name)),textScaleX,textScaleY,textAngle)
				draw_text_transformed(xx+1,yy-30,string_hash_to_newline(string(name)),textScaleX,textScaleY,textAngle)
				draw_text_transformed(xx+1,yy-31,string_hash_to_newline(string(name)),textScaleX,textScaleY,textAngle)
				draw_set_color(c_white)
				draw_text_transformed(xx,yy-31,string_hash_to_newline(string(name)),textScaleX,textScaleY,textAngle)
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with CourtyardEntrance
		{
			if place_meeting(x,y,Player)
			{
				var yy = y-oy-18;
				var xx = x-ox-2;
				draw_sprite(sprEPickup,UberCont.opt_gamepad,xx,yy-7)

				draw_set_color(c_black)
				draw_text_transformed(xx,yy-30,string_hash_to_newline(string(name)),1,1,textAngle)
				draw_text_transformed(xx+1,yy-30,string_hash_to_newline(string(name)),1,1,textAngle)
				draw_text_transformed(xx+1,yy-31,string_hash_to_newline(string(name)),1,1,textAngle)
				draw_set_color(c_white)
				draw_text_transformed(xx,yy-31,string_hash_to_newline(string(name)),1,1,textAngle)
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with VoidExit
		{
			if isOpen && place_meeting(x,y,Player)
			{
				var yy = y-oy-18;
				var xx = x-ox-2;
				draw_sprite(sprEPickup,UberCont.opt_gamepad,xx,yy-7)

				draw_set_color(c_black)
				draw_text_transformed(xx,yy-30,string_hash_to_newline(string(name)),1,1,textAngle)
				draw_text_transformed(xx+1,yy-30,string_hash_to_newline(string(name)),1,1,textAngle)
				draw_text_transformed(xx+1,yy-31,string_hash_to_newline(string(name)),1,1,textAngle)
				draw_set_color(c_white)
				draw_text_transformed(xx,yy-31,string_hash_to_newline(string(name)),1,1,textAngle)
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with VoidNPC
		{
			if place_meeting(x,y,Player) && hasShitToSay && sprite_index == spr_idle && TextHandler.text == ""
			{
				var yy = y-oy-18;
				var xx = x-ox-2;
				draw_sprite(sprEPickup,UberCont.opt_gamepad,xx,yy-talkPopupY-7)

				draw_set_color(c_black)
				draw_text(xx,yy-talkPopupY,string_hash_to_newline(string(name)))
				draw_text(xx+1,yy-talkPopupY,string_hash_to_newline(string(name)))
				draw_text(xx+1,yy-talkPopupY-1,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(xx,yy-talkPopupY-1,string_hash_to_newline(string(name)))
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with VoidShopItem
		{
			if place_meeting(x,y,Player)
			{
				var yy = y-oy-18;
				var xx = x-ox-2;
				draw_sprite(sprEPickup,UberCont.opt_gamepad,xx,yy+7)
				if isChallenge
				{
					var yyy = yy - 30;
					var nm = "COSTS: "+string(cost);
					yyy -= 8;
					scrDrawTextBackgrounded(xx,yyy - 8,nm,c_white);
					scrDrawTextBackgrounded(xx,yyy,challenge,c_red);
					scrDrawTextBackgrounded(xx,yyy + string_height(challenge),reward,c_lime);
					if UberCont.normalGameSpeed == 60
						explain += 0.5;
					else
						explain += 1;
					if explain > 20
					{
						draw_set_halign(fa_right);
						scrDrawTextBackgrounded(xx - string_width(challenge) * 0.5,yyy,"CHALLENGE [",c_white);
						scrDrawTextBackgrounded(xx - string_width(reward) * 0.5,yyy + string_height(challenge),"REWARD [",c_white);
						draw_set_halign(fa_left);
						scrDrawTextBackgrounded(xx + string_width(challenge) * 0.5,yyy,"] UPCOMING LOOP",c_white);
						scrDrawTextBackgrounded(xx + string_width(reward) * 0.5,yyy + string_height(challenge),"] UPON RETURN",c_white);
						draw_set_halign(fa_center);
					}
				}
				else
				{
					var nm = name + "\nCOSTS: "+string(cost);
					draw_set_color(c_black)
					draw_text(xx,yy-30,nm)
					draw_text(xx+1,yy-30,nm)
					draw_text(xx+1,yy-31,nm)
					draw_set_color(c_white)
					draw_text(xx,yy-31,nm)
				}
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
			else
			{
				explain = 0;	
			}
		}
		with TheMultiCrown
		{
			if place_meeting(x,y,Player)
			{
				var yy = y-oy-18;
				var xx = x-ox-2;
				draw_sprite(sprEPickup,UberCont.opt_gamepad,xx,yy-7)

				draw_set_color(c_black)
				draw_text_transformed(xx,yy-30,string_hash_to_newline(string(name)),1,1,textAngle)
				draw_text_transformed(xx+1,yy-30,string_hash_to_newline(string(name)),1,1,textAngle)
				draw_text_transformed(xx+1,yy-31,string_hash_to_newline(string(name)),1,1,textAngle)
				draw_set_color(c_white)
				draw_text_transformed(xx,yy-31,string_hash_to_newline(string(name)),1,1,textAngle)
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with PizzaEntrance
		{
			if place_meeting(x,y,Player) && image_index == 1
			{
				if !wentIn
				{
					draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox+16,y-oy-7)
				}

				draw_set_color(c_black)
				draw_text(x-ox+16,y-oy-30,string_hash_to_newline(string(name)))
				draw_text(x-ox+17,y-oy-30,string_hash_to_newline(string(name)))
				draw_text(x-ox+17,y-oy-31,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(x-ox+16,y-oy-31,string_hash_to_newline(string(name)))
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with PinkSheep
		{
			if place_meeting(x,y,Player) && Player.area != 8 && Player.area != 113
			{
				draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-7)

				draw_set_color(c_black)
				draw_text(x-ox,y-oy-30,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-30,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-31,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(x-ox,y-oy-31,string_hash_to_newline(string(name)))
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with SurvivalArenaStarter
		{
			if place_meeting(x,y,Player)
			{
			draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-7)

			draw_set_color(c_black)
			draw_text(x-ox,y-oy-48,string_hash_to_newline(string(name)))
			draw_text(x-ox+1,y-oy-48,string_hash_to_newline(string(name)))
			draw_text(x-ox+1,y-oy-49,string_hash_to_newline(string(name)))
			draw_set_color(c_white)
			draw_text(x-ox,y-oy-49,string_hash_to_newline(string(name)))
			//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with SurvivalArenaSkipper
		{
			if !overwritten && place_meeting(x,y,Player)
			{
			draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-7)

			draw_set_color(c_black)
			draw_text(x-ox,y-oy-48,string_hash_to_newline(string(name)))
			draw_text(x-ox+1,y-oy-48,string_hash_to_newline(string(name)))
			draw_text(x-ox+1,y-oy-49,string_hash_to_newline(string(name)))
			draw_set_color(c_white)
			draw_text(x-ox,y-oy-49,string_hash_to_newline(string(name)))
			//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with BossReward
		{
			if active && place_meeting(x,y,Player)
			{
				draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-12)
				draw_set_color(c_black)
				draw_text(x-ox,y-oy-42,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-42,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-43,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(x-ox,y-oy-43,string_hash_to_newline(string(name)))
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with SaveStation
		{
			if active && place_meeting(x,y,Player)
			{
				if Player.my_health > 0 && UberCont.lastSaveLoop != Player.loops
					draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-12)
				draw_set_color(c_black)
				draw_text(x-ox,y-oy-45,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-45,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-46,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(x-ox,y-oy-46,string_hash_to_newline(string(name)))
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with BecomeBallBoss
		{
			if available && place_meeting(x,y,Player)
			{
				if canStart
					draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-12)

				draw_set_color(c_black)
				draw_text(x-ox,y-oy-42,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-42,string_hash_to_newline(string(name)))
				draw_text(x-ox+1,y-oy-43,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(x-ox,y-oy-43,string_hash_to_newline(string(name)))
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with JungleFrozenPlant
		{
			if place_meeting(x,y,Player)
			{
			draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox,y-oy-7)

			draw_set_color(c_black)
			draw_text(x-ox,y-oy-30,string_hash_to_newline(string(name)))
			draw_text(x-ox+1,y-oy-30,string_hash_to_newline(string(name)))
			draw_text(x-ox+1,y-oy-31,string_hash_to_newline(string(name)))
			draw_set_color(c_white)
			draw_text(x-ox,y-oy-31,string_hash_to_newline(string(name)))
			//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
			}
		}
		with UltraChest
		{
			if place_meeting(x,y,Player)
			{
				explainTimer += 1*dt;
				var yy = y-oy - 22;
				draw_sprite(sprEPickup,UberCont.opt_gamepad,x,yy-2)
		
				draw_set_color(c_black)
				draw_text(x-ox,yy,string_hash_to_newline(string(name)))
				draw_text(x-ox,yy,string_hash_to_newline(string(name)))
				draw_text(x-ox,yy-1,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(x-ox,yy-1,string_hash_to_newline(string(name)))
			
				if explainTimer > 20
				{
					var mr = 620;
					with dataRef
						mr = GetPlayerMaxRad();
					var helpText = "YOU HAVE " + string((Player.rad/mr)*100) + "% RADS";
					yy = y - oy + 14;
					draw_set_color(c_black)
					draw_text(x-ox,yy,string_hash_to_newline(string(helpText)))
					draw_text(x-ox,yy,string_hash_to_newline(string(helpText)))
					draw_text(x-ox,yy-1,string_hash_to_newline(string(helpText)))
					draw_set_color(c_white)
					draw_text(x-ox,yy-1,string_hash_to_newline(string(helpText)))
				}
			}
			else
				explainTimer = 0;
		}
		with Blasphemia
		{
			if place_meeting(x,y,Player)
			{
				var yy = y - oy - 28;
				draw_sprite(sprEPickup,UberCont.opt_gamepad,x,yy-2)
		
				draw_set_color(c_black)
				draw_text(x-ox,yy,string_hash_to_newline(string(name)))
				draw_text(x-ox,yy,string_hash_to_newline(string(name)))
				draw_text(x-ox,yy-1,string_hash_to_newline(string(name)))
				draw_set_color(c_white)
				draw_text(x-ox,yy-1,string_hash_to_newline(string(name)))
			
			}
		}
		with WeaponMod
		{
			if place_meeting(x,y,Player) && Player.wep != 0
			{
				draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox+8,y-oy)

				draw_set_color(c_black)
				draw_text(x-ox+16,y-oy,string_hash_to_newline(string(modname)))
				draw_text(x-ox+17,y-oy,string_hash_to_newline(string(modname)))
				draw_text(x-ox+17,y-oy-1,string_hash_to_newline(string(modname)))
				draw_set_color(c_white)
				draw_text(x-ox+16,y-oy-1,string_hash_to_newline(string(modname)))
				//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
				holdExplainTimer += 1*dt;
				//Ultra mod destription
				if holdExplainTimer > 30
				{
					var yy = y-oy + 32;
					draw_set_color(c_black)
					draw_text(x-ox+16,yy,string_hash_to_newline(string(moddescription)))
					draw_text(x-ox+17,yy,string_hash_to_newline(string(moddescription)))
					draw_text(x-ox+17,yy-1,string_hash_to_newline(string(moddescription)))
					draw_set_color(c_white)
					draw_text(x-ox+16,yy-1,string_hash_to_newline(string(moddescription)))
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
				var yy = y-oy - 32;
				var btw = " <=> ";
				var btwh = string_width(btw)*0.5;
				draw_sprite(sprEPickup,UberCont.opt_gamepad,x,yy-4)
				draw_set_color(c_black)
				draw_set_halign(fa_left);
				var xx = x-ox - ( string_width(lstring) + btwh)
				draw_text(xx,yy,lstring)
				draw_text(xx+1,yy,lstring)
				draw_text(xx+1,yy-1,lstring)
				draw_set_color(c_white)
				draw_text(xx,yy-1,lstring)
				xx = x-ox - btwh;
				draw_set_color(c_black)
				draw_text(xx,yy,btw)
				draw_text(xx+1,yy,btw)
				draw_text(xx+1,yy-1,btw)
				draw_set_color(c_white)
				draw_text(xx,yy-1,btw)
				xx = x-ox + btwh//+ ( string_width(lstring) + (string_width(" <SWAP> ")*0.5))
				draw_set_color(c_black)
				draw_text(xx,yy,rstring)
				draw_text(xx+1,yy,rstring)
				draw_text(xx+1,yy-1,rstring)
				draw_set_color(c_white)
				draw_text(xx,yy-1,rstring)
				draw_set_halign(fa_center)
			
				holdExplainTimer += 1*dt;
				//Ultra mod destription
				if holdExplainTimer > 30
				{
					yy = y-oy + 16;
					draw_text(x-ox,yy,ultramodDescription);
					draw_set_color(c_black)
					draw_text(x-ox,yy,ultramodDescription)
					draw_text(x-ox+1,yy,ultramodDescription)
					draw_text(x-ox+1,yy-1,ultramodDescription)
					draw_set_color(c_white)
					draw_text(x-ox,yy-1,ultramodDescription)
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
		draw_sprite(sprEPickup,UberCont.opt_gamepad,x-ox+8,y-oy)


		draw_set_color(c_black)
		draw_text(x-ox+16,y-oy,string_hash_to_newline("CLOSE CROWNVAULT"))
		draw_text(x-ox+17,y-oy,string_hash_to_newline("CLOSE CROWNVAULT"))
		draw_text(x-ox+17,y-oy-1,string_hash_to_newline("CLOSE CROWNVAULT"))
		draw_set_color(c_white)
		draw_text(x-ox+16,y-oy-1,string_hash_to_newline("CLOSE CROWNVAULT"))
		//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
		}
		}
	}

	//grid
	//with Floor
	//draw_rectangle(x,y,x+32,y+32,1)
	draw_set_colour(c_white);
	var tx = dataRef.x;
	var ty = dataRef.y
	if instance_exists(enemy) && (point_distance(tx,ty,instance_nearest(tx,ty,enemy).x,instance_nearest(tx,ty,enemy).y) > 360 ||
	instance_number(enemy) + instance_number(becomenemy) < instance_number(IDPDVan) + 2)
	{
		var t = undefined;
		if !instance_exists(enemy)
		{
			if instance_exists(becomenemy) && becomenemy.object_index != WantBoss
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
			var xx = t.x - ox;
			var yy = t.y - oy;
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
			if shouldDraw && !instance_exists(NuclearThrone1)
				draw_sprite(sprLastEnemyIndicator,0,xx,yy);
		}
	}
	with Portal
	{
		/// Portal position indication for the player
		if alarm[1] < 1
		{
			var xx = x - ox;
			var yy = y - oy;
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
			{
			if inverted
				draw_sprite(sprPortalIndicator,2,xx,yy);
			else if type = 1
				draw_sprite(sprPortalIndicator,0,xx,yy);
			else if type = 3
				draw_sprite(sprPortalIndicator,1,xx,yy);
			}
		}
	}
	if instance_exists(SecretFinder)
	{
		with BigVultureSkull
		{
			scrDrawSecretFinder(ox,oy);
		}
		with BigFishSkull
		{
			scrDrawSecretFinder(ox,oy);
		}
		with DragonSkull
		{
			scrDrawSecretFinder(ox,oy);
		}
		with JungleFrozenPlant
		{
			scrDrawSecretFinder(ox,oy);
		}
		with GraveyardEntrance
        {
            scrDrawSecretFinder(ox,oy);
        }
        with MushroomLandEntrance
        {
            scrDrawSecretFinder(ox,oy);
        }
        with FactoryEntrance
        {
            scrDrawSecretFinder(ox,oy);
        }
        with UltraScrapyardEntrance
        {
            scrDrawSecretFinder(ox,oy);
        }
        with PizzaEntrance
        {
            scrDrawSecretFinder(ox,oy);
        }
		with CloudEnterance
		{
            scrDrawSecretFinder(ox,oy);
        }
	}
	if (UberCont.ctot_void_entered > 0 && (instance_exists(TextHandler) || instance_exists(LevCont) || instance_exists(GenCont)))
	{
		var vw = camera_get_view_width(view_camera[0]);
		draw_set_halign(fa_left)
		draw_set_valign(fa_middle)
		var ty = vy + 8
		var m = round(vx + vw * 0.5)
		draw_sprite(sprPortalEssenceHUD,0,m - 2, ty);
		var tx = m + 2;
		var pe = UberCont.portalEssence
		draw_text_colour(tx, ty + 1,pe,c_black,c_black,c_black,c_black,1);
		draw_text_colour(tx + 1, ty + 1,pe,c_black,c_black,c_black,c_black,1);
		draw_text_colour(tx + 1, ty,pe,c_black,c_black,c_black,c_black,1);
		draw_text(tx, ty,pe);
		draw_set_valign(fa_top)
	}
}
