///scrMeleeAmmoCost();
// /@description
///@param
function scrMeleeAmmoCost(myCost = 1){
	if (scrIsCrown(40) && hasCosted < 5 && instance_exists(Player))
	{
		var hasEnoughAmmo = false;
		var hasEnoughRads = true;
		with Player
		{
			var targetAmmo = other.meleeAmmoType;
			if alarm[2] > 0
			{
				myCost = 0;
				hasEnoughAmmo = true;
			}
			else
			{
				if targetAmmo == 1
				{
					myCost *= 7.7272727272727272727272727272727;
				}
				else if targetAmmo != 0
				{
					myCost *= 1.6666666666666666666666666666667;
				}
				if ultra_got[29] && altUltra && bwep == 0
				{
					myCost *= 0.9;
				}
				if ultra_got[4]//FISH can Gun ultra
				{
					if altUltra
						myCost *= 0.85;
					else
						myCost *= 0.95;
				}
				if scrIsCrown(13)
					myCost *= 2;
				if ultra_got[15]
				{
					var cp = myCost/33;
					var radCost = 35 * cp;//Normally 40
					myCost *= 0.5;
					if rad < radCost
					{
						hasEnoughRads = false;
					}
				}
				if ultra_got[59] && !altUltra
				{
					// myCost *= 0.8;
					targetAmmo = 5;
				}
				if ultra_got[80]
				{
					if other.sprite_index == sprGoldenSlash || other.sprite_index == sprGoldenShank
					|| other.sprite_index == sprGoldFrostShank || other.sprite_index == sprGoldenHeavySlash
					|| other.sprite_index == sprGoldenLanceSlash
					{
						myCost *= 0.8;
					}
				}
				if ultra_got[96]//ULTRA D ELEMENTOR THUNDER BOMB
			    {
				    if other.object_index == LightningShank || other.object_index == LightningSlash
				    {
					    if (ammo[4] + round(myCost*0.6) >=typ_amax[4])//get explo ammo
					    {
							ammo[4]=typ_amax[4];
					    }
					    else
							ammo[4] += round(myCost*0.6);
    
				    }
				    if other.object_index == KrakenSlash // You are holding a kraken weapon
				    {
					    if (ammo[5] +round(myCost*0.6) >=typ_amax[5])//get energy ammo
					    {
							ammo[5]=typ_amax[5];
					    }
					    else
							ammo[5] += round(myCost*0.6);
				    }
			    }
				if ultra_got[61] && altUltra && other.object_index == KrakenSlash
				{
					myCost *= 0.7;
				}
				if scrIsCrown(39)
				{
					if my_health < maxhealth
					{
						myCost *= 0.9;
					}
					else
					{
						myCost *= 1.1;
					}	
				}
				if ammo[targetAmmo] >= myCost
					hasEnoughAmmo = true;
			}
		}
		if !hasEnoughRads
		{
			if Player.drawempty <= 10
			{
				snd_play(sndEmpty)
				var pt = instance_create(x,y,PopupText)
				pt.mytext = "NOT ENOUGH RADS";
				pt.theColour=c_red;
				if !audio_is_playing(sndUltraEmpty)
					snd_play(sndUltraEmpty)
				with Player
				{
					wkick = -2
					drawempty = 30
				}
			}
		}
		else if hasEnoughAmmo
		{
			hasCosted += myCost;
			with Player
			{
				ammo[targetAmmo] -= myCost;
			}
		}
		else 
		{
			if Player.drawempty <= 10
			{
				snd_play(sndEmpty)
				var pt = instance_create(x,y,PopupText)
				pt.mytext = "EMPTY "
				if Player.ammo[Player.wep_type[Player.wep]] > 0
				{
					pt.mytext = "NOT ENOUGH ";
					pt.sprt = sprAmmoIconsEmpty
					pt.ii = Player.wep_type[Player.wep];
				}
				pt.theColour=c_red;
				with Player
				{
					wkick = -2
					drawempty = 30
				}
			}
			return true;
		}
	}
	return false;
}