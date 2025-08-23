/// @description Start of Area effects that should be visible
if instance_exists(Spiral) || instance_exists(GenCont) || instance_exists(SpiralCont)
	alarm[7] = 5;
else
{
	with Player
	{
		if skill_got[48] || true
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
				scrHeal(excessHealth,false);
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
				armour = min(armour,maxarmour);
				snd_play_2d(sndArmourHeal);
				BackCont.shake += 5;
			}
			excessArmour = 0;
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
	}
}