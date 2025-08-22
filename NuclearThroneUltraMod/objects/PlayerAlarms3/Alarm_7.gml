/// @description Start of Area effects that should be visible
if instance_exists(Spiral) || instance_exists(GenCont) || instance_exists(SpiralCont)
	alarm[7] = 10;
else
	with Player
	{
		if skill_got[48] || true
		{
			excessResourceDamageBoost = 0;
			if excessRad > 0
				snd_play(sndRadPickup);
			rad += excessRad;
			excessRad = 0;
			cash +=excessCash;
			excessCash = 0;
			voidBeam += excessVoidBeam;
			excessVoidBeam = 0;
			if excessHealth > 0
				scrHeal(excessHealth,false);
			if excessArmour > 0
			{
				armour += excessArmour;
				armour = min(armour,maxarmour);
			}
			excessHealth = 0;
			var didAmmo = false;
			for (var i = 0; i < 6; i++)
			{
				ammo[i] += excessAmmo[i];
				if ammo[i] > typ_amax[i] && !ultra_got[26]
					ammo[i] = typ_amax[i];
				if excessAmmo[i] > 0
				{
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
					snd_play(sndAmmoPickup)
		}
	}