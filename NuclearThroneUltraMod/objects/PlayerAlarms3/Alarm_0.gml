/// @description Adrenaline & Peace Ammo & Healing
alarm[0] = 5;
var isInCombat = false;
if enemyHealthWasChanged || playerHealthWasChanged
	with Player {
		if !outOfCombat
		{
			var n = instance_nearest(x,y,enemy)
			if n != noone && n.team != 2 && n.object_index != IDPDVan && n.object_index != IDPDVanVertical && point_distance(x,y,n.x,n.y) < 270 && (!instance_exists(Wall) || !collision_line(x,y,n.x,n.y,Wall,false,false))
			{
				isInCombat = true;
			}
		}
		if isInCombat
		{
			var canAmmo = false;
			var canHeal = false;
			if skill_got[45]
			{
				with other
				{
					adrenalineAmmoTimer -= 1;
					adrenalineHealTimer -= 1;
					if adrenalineAmmoTimer <= 0
					{
						canAmmo = true;
						adrenalineAmmoTimer = adrenalineAmmoCooldown;
					}
					if adrenalineHealTimer <= 0 && other.my_health < other.maxhealth
					{
						canHeal = true;
						adrenalineHealTimer = adrenalineHealCooldown;
					}
				}
				if canAmmo
				{
					//scrSwapWeps();
					scrCollectAmmo(0.26, false, false, false, true);
					if wep_rad[wep] > 0 || wep_rad[bwep] > 0 || wep_rad[cwep] > 0
						scrRaddrop(1);
					//scrSwapWeps();
				}
				if canHeal
				{
					scrHeal(1);
					snd_play(sndAdrenalineHeal,0.01);
					with instance_create(x,y,HealFX)
					{
						sprite_index = sprSmallHealFX;
					}
					instance_create(x,y,AdrenalineHeal);
				}
			}
			if skill_got[46] && peaceBarriers < peaceBarriersMax
			{
				peaceBarrierTime += 1/max(1,(peaceBarriers + 0.85));
				if peaceBarrierTime > peaceBarrierDuration
				{
					peaceBarrierTime = 0;
					peaceBarriers += 1;
					snd_play_2d(sndGainProtection);
					BackCont.shake += 15;
					with instance_create_depth(x,y,depth + 1, GainBarrier)
					{
						owner = other.id;
						sprite_index = other.sprite_index;
					}
					with instance_create_depth(x,y,depth + 1, GainBarrier)
					{
						owner = other.id;
						scale += 0.75;
						alpha = 0;
						alarm[1] = 10;
						sprite_index = other.sprite_index;
					}
				}
			}
		}
	}
detectedCombat = isInCombat;