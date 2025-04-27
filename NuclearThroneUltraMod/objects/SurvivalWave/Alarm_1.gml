/// @description Winner?
if !scrIsGamemode(25)
{
	if instance_number(enemy) <= instance_number(IDPDVan) && !instance_exists(LilHunterFly) && !instance_exists(InvertedLilHunterFly) && !instance_exists(VanSpawn) && !instance_exists(SurvivalPortal)
	{
		//var maxU = UberCont.maxUltramod;
		if UberCont.crownVaultChallenge < 3
		{
			instance_create(x,y,ShowVoidEssenceTemporarily);
			with UberCont
			{
				portalEssence += 5 * (UberCont.crownVaultChallenge + 1) * scrGetPortalEssenceBoost();
			}
		}
		var yy = centerY-96;
		with Corpse
		{
			instance_destroy(id,false);
			instance_create(x,y,SurvivalPortal);
		}
		with CorpseCollector
		{
			var al = ds_list_size(corpses)
			for (var i = 0; i < al; i++)
			{
				instance_create(corpses[| i].xx,corpses[| i].yy,SurvivalPortal);
			}
			ds_list_clear(corpses);
		}
		with WepPickup
		{
			motion_add(point_direction(other.centerX,other.centerY,x,y),8);
		}
		var w = 4;
		var h = 5;
		
		var xstep = 256/w;
		var ystep = 256/h;
		var i = 1;
		for (var iy = 0; iy < h; iy++) {
			var xx = centerX-96;
			for (var ix = 0; ix < w; ix++) {
			    with instance_create(xx,yy,UltraMod)
				{
					instance_create(x,y,SurvivalPortal);
					ultramod = i;
				}
				i++;
				xx += xstep;
			}
			yy += ystep;
		}
		scrActivateAllOutOfRange();
		
		with Floor
		{
			if styleb
				sprite_index = sprFloor100D;
			else
				sprite_index = sprFloor100;
		}
		UberCont.crownVaultChallenge ++;
		if UberCont.crownVaultChallenge > 2
		{
				scrUnlockGameMode(36,"FOR COMPLETING THE THIRD#ULTRA MOD CHALLENGE");
		}
		with projectile
		{
			if team != 2
				instance_destroy();
		}
		with PopoNade
		{
			instance_destroy(id,false)
		}
		with FloorExplo
		{
			sprite_index = sprFloor100Explo;	
		}
		with MusCont
		{
			audio_stop_sound(song);
			song = mus100
			snd_loop(song);
		}
		alarm[4] = 0;
		with Player
		{
			area = 100;
		}
		with PlayerSpawn
		{
			area = 100;	
		}
		if instance_exists(TopCont)
			TopCont.darkness = 1;
	}
	else
	{
		with  enemy
		{
			if (point_distance(other.centerX,other.centerY,x,y) > 400)
				my_health = 0;
		}
		with Player
		{
			area = 100;
		}
		with PlayerSpawn
		{
			area = 100;	
		}
		alarm[1] = 60;
	}
}
else
{
	if instance_number(enemy) <= instance_number(IDPDVan) && !instance_exists(LilHunterFly) && !instance_exists(InvertedLilHunterFly)
	{
		if waveNumber == 3
		{
			scrUnlockGameMode(42,"#FOR REACHING WAVE 4#IN SURVIVAL ARENA",25);	
		}
		instance_create(centerX,centerY,Portal);
	}
	else
	{
		alarm[1] = 60;	
	}
}