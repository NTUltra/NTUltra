///scrBasicRobotEat();
// /@description
///@param
function scrBasicRobotEat(xx,yy,eatWep){
	var r = 4;
	if string_copy(wep_name[eatWep],0,5) = "ULTRA"
	{
		scrRaddrop(12,xx,yy);
		scrUnlockCSkin(8,"FOR EATING AN ULTRA WEAPON",0);
	}
	else if string_copy(wep_name[eatWep],0,5) = "HYPER" || eatWep = 131//heavy hyper shit
	{
		scrUnlockBSkin(8,"FOR EATING A HYPER WEAPON",0);
	}
	if string_copy(wep_name[eatWep],0,4) = "GOLD"
	{
		if object_index == Player && Player.spr_idle == sprMutant8Idle//Robot secret golden skin
		{
			scrUnlockAltSkin(race, 0);
			spr_idle=sprMutant8DIdle;
			spr_walk=sprMutant8DWalk;
			spr_hurt=sprMutant8DHurt;
			spr_dead=sprMutant8DDead;
		}
		repeat(4)
		{
			if random(maxhealth) > my_health and !scrIsCrown(2)
				instance_create(xx,yy,HPPickup)
			else
				instance_create(xx,yy,AmmoPickup)
		}
	}
	if object_index == WepPickup
	{
		if Player.ultra_got[31]
		{
			persistent = true;
			visible = false;
			hasBeenEaten = true;
			snd_play(sndPortalCloseShort,0,false,true,2,false,false,0.8,false,id,2);
			instance_create(x,y,SurvivalPortal);
		}
		else
		{
			instance_destroy();	
		}
	}
	else
	{
		if Player.ultra_got[31] {
			with instance_create(x,y,WepPickupForOneWepOnly) {
				scrWeapons();
				wep = eatWep;
				name = wep_name[wep]
				type = wep_type[wep]
				curse = false;
				sprite_index = wep_sprt[wep]
				persistent = true;
				visible = false;
				wepmod1 = other.wepmod1;
				wepmod2 = other.wepmod2;
				wepmod3 = other.wepmod3;
				wepmod4 = other.wepmod4;
				isPermanent = other.isPermanent;
				hasBeenEaten = true;
			}
			snd_play(sndPortalCloseShort,0,false,true,2,false,false,0.8,false,id,2);
			instance_create(x,y,SurvivalPortal);
		}
	}
	with instance_create(x,y,RobotEat)
	{
		image_xscale = Player.right
	}

		
	var shouldHeal = true;
	if Player.skill_got[5] = 1
	{
		if !audio_is_playing(sndRobotEatUpg)
			snd_play_2d(sndRobotEatUpg)
		r += 4;
		if Player.my_health < Player.maxhealth - 1 && random(Player.maxhealth-1) > Player.my_health and !scrIsCrown(2)
		{
			instance_create(xx,yy,HPPickup);
			shouldHeal = false;
		}
		else
		{
			instance_create(xx,yy,AmmoPickup);
		}
	}
	else
	{
		if !audio_is_playing(sndRobotEat)
			snd_play_2d(sndRobotEat);
		shouldHeal = false;
	}
	if Player.my_health < Player.maxhealth - 1 && random(Player.maxhealth-1) > Player.my_health and !scrIsCrown(2)
	{
		instance_create(xx,yy,HPPickup);
		shouldHeal = false;
	}
	else
		instance_create(xx,yy,AmmoPickup)
	if shouldHeal {
		scrHeal(1);
		snd_play_2d(sndHealthPickup);
	}
	if Player.ultra_got[29] || Player.ultra_got[30] || Player.ultra_got[31]
		r += 2;
	scrRaddrop(r,xx,yy);
	instance_create(x,y,Smoke)

	//ROBOT Ultra B Regurgitate
	if Player.ultra_got[30] && !Player.altUltra
	{
		if random(100) < 50 + (Player.skill_got[23]*10)//original 43% chance
		{
			snd_play_2d(sndRegurgitate);
		    var dir;
		    dir=random(100);
		    {
		        if dir>77
		        {
					instance_create(xx,yy,AmmoChest);
		        }
		        else if dir>52
		        {
					instance_create(xx,yy,HealthChest);
		        }
		        else if dir>27
		        {
					instance_create(xx,yy,RadChest);
		        }
		        else if dir<=27//slightly higher chance for weapon chest cus robot luv weps
		        {
					instance_create(xx,yy,WeaponChest);
		        }
		    }
		}
	}
}