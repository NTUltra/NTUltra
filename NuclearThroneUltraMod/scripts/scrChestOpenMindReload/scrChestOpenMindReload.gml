///scrChestOpenMindReload();
// /@description
///@param
function scrChestOpenMindReload(thePlayer, dealDamageAnyway = false){
	var cx = x;
	var cy = y;
	with thePlayer
	{
		if ultra_got[1]
		{
			with instance_create(cx,cy,HandBlock) {
				team = other.team;
				image_xscale = 1.125;
				image_yscale = image_xscale;
			}
		}
		if scrIsCrown(6)
		{
			scrRaddrop(17);
			if dealDamageAnyway || place_meeting(x,y,chestprop)
			{
				if armour > 0
					armour -= 1;
				else
					DealDamage(1);
				exception = true;
				sprite_index = spr_hurt;
				image_index = 0;
				snd_play(snd_hurt, hurt_pitch_variation);
				Sleep(40);
				hitBy = other.sprite_index;
			}
		}
		if skill_got[23]//Open mind
		{
			snd_play(sndChestReload);
			with instance_create(cx,cy,HealAbsorbingPores)
				sprite_index = sprAbsorbingPoresChest;
			if reload > 0
			{
				scrFlexibleElbowReload(wep);	
			}
			if breload > 0
			{
				scrFlexibleElbowReload(bwep);
			}
			if creload > 0
			{
				scrFlexibleElbowReload(cwep);	
			}
			var lowa = 0;
			var lowb = 0;
			var lowc = 0;
			if skill_got[35]
			{
				lowa = wep_load[wep]*-3;
				lowb = wep_load[bwep]*-3;
				lowc = wep_load[cwep]*-3;
			}
			reload = lowa;
			breload = lowb;
			creload = lowc;
		}
	}
}