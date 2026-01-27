/// @description Start of Area effects that should be visible
if !forceEarlyInit && instance_exists(Spiral) || instance_exists(GenCont) || instance_exists(SpiralCont) || instance_exists(StartDaily) || !instance_exists(BackCont)
	alarm[7] = 10;
else
{
	forceEarlyInit = true;//Just to make sure it does not do this init again (by force)
	with Player
	{
		if false// && skill_got[488]
		{
			if excessResourceDamageBoost > 0
			{
				with instance_create(x,y,GluttonousConsumption)
				{
					glutResourceNumber = other.excessResourceDamageBoost * 100;
					alarm[0] += glutResourceNumber
					totalDuration = alarm[0] + 1;
					glutFrame = (other.excessResourceDamageBoost/other.excessResourceDamageBoostMax) * 10
				}
			}
			excessResourceDamageBoost = 0;
			if excessRad > 0
			{
				snd_play_2d(sndRadPickup);
				BackCont.shake += 2;
				if excessRad > 20
					BackCont.shake += 3;
				if excessRad > 100
					BackCont.shake += 3;
			}
			rad += excessRad;
			excessRad = 0;
			cash += excessCash;
			cash = min(cash,maxCash);
			if excessCash > 0
			{
				snd_play_2d(sndHorrorCashFlowEnd);
				BackCont.shake += 4;
				if excessCash > 100
					BackCont.shake += 10;
			}
			excessCash = 0;
			voidBeam += excessVoidBeam;
			if excessVoidBeam > 0
			{
				if excessVoidBeam > 100
				{
					snd_play_2d(sndVoidConsumptionXL,0.01);
					BackCont.shake += 20;
				}
				else if excessVoidBeam > 40
				{
					snd_play_2d(sndVoidConsumptionL,0.01);
					BackCont.shake += 12;
				}
				else if excessVoidBeam > 20
				{
					snd_play_2d(sndVoidConsumptionM,0.01);
					BackCont.shake += 6;
				}
				else
				{
					snd_play_2d(sndVoidConsumptionS,0.01);
					BackCont.shake += 3;
				}
			}
			excessVoidBeam = 0;
			if excessHealth > 0
			{
				scrHeal(excessHealth,false, false);
				if excessHealth > 2
				{
					snd_play_2d(sndHealthPickupUpg);
					BackCont.shake += 8;
				}
				else
				{
					snd_play_2d(sndHealthPickup);
					BackCont.shake += 3;
				}
			}
			excessHealth = 0;
			if excessArmour > 0
			{
				armour += excessArmour;
				var num = excessArmour;
				armour = min(armour,maxarmour);
				snd_play_2d(sndArmourHeal);
				if UberCont.opt_ammoicon
				{
					dir = instance_create(x,y,PopupText)
					dir.sprt = sprArmourIconPickup;
					dir.mytext = "+"+string(num)
					if armour >= maxarmour
						dir.mytext = "MAX"
				}
				else
				{
					dir = instance_create(x,y,PopupText)
					dir.mytext = "+"+string(num)+" HP"
					if armour >= maxarmour
					dir.mytext = "MAX ARMOUR"
				}
				BackCont.shake += 10;
			}
			excessArmour = 0;
			if excessPortalStrikeAmmo > 0 && rogueammomax > 0
			{
				rogueammo += excessPortalStrikeAmmo;
				rogueammo = min(rogueammo,rogueammomax);
				snd_play_2d(sndRogueCanister);
				BackCont.shake += 10;
				var dir = instance_create(x,y,PopupText)
				var num = excessPortalStrikeAmmo;
				if UberCont.opt_ammoicon
				{
					dir.sprt = sprRogueAmmoIconPickup;
					if rogueammo = rogueammomax
						dir.mytext = "MAX"
					else
						dir.mytext = "+"+string(num)
				}
				else if UberCont.opt_ammoicon
				{
					if rogueammo = rogueammomax
					dir.mytext = "MAX PORTALSTRIKE"
					else
					dir.mytext = "+"+string(num)+" PORTALSTRIKE"
				}
			}
			excessPortalStrikeAmmo = 0;
			if excessRage > 0
			{
				rage += excessRage;
				if rage > 500
					rage = 500;
				with instance_create(x,y-20,RageIndicator)
				{
					direction = other.direction;
					speed = other.speed * 0.5;
					rageNumber = round(other.rage);
					snd_play(sndRageIndicator);
					motion_add(random(360),0.5);
				}
				with instance_create(x,y,Smoke)
				{
					motion_add(random(360),1);
				}
				with instance_create(x,y,Smoke)
				{
					motion_add(random(360),2);
				}
			}
			excessRage = 0;
			var didAmmo = false;
			for (var i = 0; i < 6; i++)
			{
				ammo[i] += excessAmmo[i];
				if ammo[i] > typ_amax[i] && !ultra_got[26]
					ammo[i] = typ_amax[i];
				if excessAmmo[i] > 0
				{
					BackCont.shake += 4;
					didAmmo = true;
					if (UberCont.opt_ammoicon)
					{
						dir = instance_create(x,y,PopupText)
						dir.sprt = sprAmmoIconsPickup
						dir.ii = i;
						dir.mytext = "+"+string(excessAmmo[i])//+string(Player.typ_name[i])
						if Player.ammo[i] == Player.typ_amax[i]
							dir.mytext = "MAX"//+string(Player.typ_name[i])
	
					}
					else
					{
						dir = instance_create(x,y,PopupText)
						dir.mytext = "+"+string(excessAmmo[i])+" "+string(Player.typ_name[i])
						if Player.ammo[i] == Player.typ_amax[i]
							dir.mytext = "MAX "+string(Player.typ_name[i])
					}
				}
				excessAmmo[i] = 0;
			}
			if didAmmo
					snd_play_2d(sndAmmoPickup);
		}
		if scrIsCrown(13)//Crown of drowning
		{
			
			ammo[1] += 50;
			ammo[2] += 5;
			ammo[3] += 5;
			ammo[4] += 5;
			ammo[5] += 5;
			snd_play_2d(sndAmmoPickup);
			BackCont.shake += 10;
			repeat(3)
			{
				with instance_create(x,y,FishBoost)
				{
					motion_add(random(360),random(2));
				}
				with instance_create(x,y,Dust)
				{
					sprite_index = sprBubble;
					motion_add(random(360),random(2));
				}
			}
			snd_play(choose(sndWater1,sndWater2) );
			with Crown
			{
				if alarm[4] > 0 || alarm[5] > 0
				{
					snd_play(sndRoll);
					repeat(3)
					{
						with instance_create(x,y,FishBoost)
						{
							motion_add(random(360),random(2));
						}
						with instance_create(x,y,Dust)
						{
							sprite_index = sprBubble;
							motion_add(random(360),random(2));
						}
					}	
				}
			}
			if !ultra_got[26] {
				var s = 1;
				if scrIsCrown(40)
					s = 0;
				for (var i = s; i < 6; i++;)
				{
					if ammo[i] > typ_amax[i]
					{
						var excessAmount = ammo[i] -  typ_amax[i]
						scrExcessResource(1 + i, excessAmount);
						ammo[i] = typ_amax[i]
					}
					if (UberCont.opt_ammoicon)
					{
						dir = instance_create(x,y,PopupText)
						dir.sprt = sprAmmoIconsPickup
						dir.ii = i;
						dir.mytext = "+"+string(excessAmmo[i])//+string(Player.typ_name[i])
						if Player.ammo[i] == Player.typ_amax[i]
							dir.mytext = "MAX"//+string(Player.typ_name[i])
	
					}
					else
					{
						dir = instance_create(x,y,PopupText)
						dir.mytext = "+"+string(excessAmmo[i])+" "+string(Player.typ_name[i])
						if Player.ammo[i] == Player.typ_amax[i]
							dir.mytext = "MAX "+string(Player.typ_name[i])
					}
				}
			}
		}
		if race == 16
		{
			BackCont.shake += 10;
			if skill_got[5]
			{
				freeArmourStrike = true;
				BackCont.shake += 5;
			}
			var num = 1;
			armour++;
			if ultra_got[62] && !altUltra//Viking armour up ultra
			{
				armour++;
				num += 1;
				BackCont.shake += 10;
				snd_play_2d(sndDoubleArmourHeal);
			}
			else
				snd_play_2d(sndArmourHeal);
			if armour > maxarmour
			{
				scrExcessResource(8,armour - maxarmour);
			}
			armour = min(maxarmour,armour);
			if UberCont.opt_ammoicon
			{
				dir = instance_create(x,y,PopupText)
				dir.sprt = sprArmourIconPickup;
				dir.mytext = "+"+string(num)
				if armour >= maxarmour
					dir.mytext = "MAX"
			}
			else
			{
				dir = instance_create(x,y,PopupText)
				dir.mytext = "+"+string(num)+" HP"
				if armour >= maxarmour
				dir.mytext = "MAX ARMOUR"
			}
		}
		//Hammer head
		if skill_got[26]//HAMMER HEAD
		{
			if hammerheadcounter > 0
			{
				BackCont.shake += hammerheadcounter;
				scrExcessResource(13, hammerheadcounter);
				snd_play(sndHammerHeadEnd);
				hammerheadcounter = ceil(hammerheadcounter*0.75);
				scrRaddrop(hammerheadcounter);
				repeat(hammerheadcounter)
				{
					hammerheadcounter --;
					if (hammerheadcounter > 0)
					{
						scrDrop(4,2);
					}
					else
					{
						scrDrop(35,12);
					}
				}
			}
			hammerheadcounter = hammerheadcounterMax;
		}
		//Alkalie Saliva
		if skill_got[32] && keptAlkaline
		{
			keptAlkaline = false;
			var healTaken = 3;
			var overHealAllow = maxhealth + 2 + defaultOverhealAddition
			if race == 25
			{
				healTaken += 1;
				overHealAllow += 1;
			}
			var excessHeal = min(healTaken,my_health + healTaken - overHealAllow);
				if excessHeal > 0
					scrExcessResource(0,excessHeal);
			with instance_create(x,y,HealFX)
			{
				depth = other.depth - 1;	
			}
			my_health = min(overHealAllow,my_health + healTaken);
			if prevhealth > my_health
				my_health = prevhealth;
			scrPhotosythesis(healTaken);
			snd_play(sndAlkalineRefund);
			with instance_create(x,y,HealFX)
			{
				depth = other.depth - 1;	
			}
			with instance_create(x,y,SharpTeeth)
				owner=other.id;
		}
		//Cash Flow
		if ultra_got[0] && altUltra
		{
			var ec = min(200,cash + 200 - maxCash);
			if ec > 0
			{
					scrExcessResource(9,ec);
			}
			cash = min(cash + 200,maxCash);
			if cash <= 0
				inDebt = true;
			else 
				inDebt = false;
		}
	}
}