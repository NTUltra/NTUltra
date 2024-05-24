/// @description Adrenaline Ammo & Healing
alarm[0] = 5;
var canAdrenaline = false;
if enemyHealthWasChanged || playerHealthWasChanged
	with Player {
		if !outOfCombat
		{
			var n = instance_nearest(x,y,enemy)
			if n != noone && n.team != 2 && n.object_index != IDPDVan && n.object_index != IDPDVanVertical && point_distance(x,y,n.x,n.y) < 270 && (!instance_exists(Wall) || !collision_line(x,y,n.x,n.y,Wall,false,false))
			{
				canAdrenaline = true;
			}
		}
		if canAdrenaline
		{
			var canAmmo = false;
			var canHeal = false;
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
	}
detectedCombat = canAdrenaline;