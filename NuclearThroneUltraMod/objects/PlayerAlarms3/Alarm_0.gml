/// @description Adrenaline & Peace & stability Ammo & Healing
alarm[0] = 10;
var isInCombat = false;
if enemyHealthWasChanged || playerHealthWasChanged
	with Player {
		var n = noone;
		if !outOfCombat
		{
			n = instance_nearest(x,y,enemy)
			if n != noone && n.team != 2 && n.object_index != IDPDVan && n.object_index != IDPDVanVertical /*&& point_distance(x,y,n.x,n.y) < 270 && (!instance_exists(Wall) || !collision_line(x,y,n.x,n.y,Wall,false,false))*/
			{
				isInCombat = true;
			}
		}
		if isInCombat
		{
			var canAmmo = false;
			var canAdrenalineHeal = false;
			if skill_got[45]
			{
				if n != noone && n.team != 2 && point_distance(x,y,n.x,n.y) < 250
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
							canAdrenalineHeal = true;
							adrenalineHealTimer = adrenalineHealCooldown;
						}
					}
					if canAmmo
					{
						//scrSwapWeps();
						scrCollectAmmo(0.25, false, false, false, true);
						if wep_rad[wep] > 0 || wep_rad[bwep] > 0 || wep_rad[cwep] > 0
							scrRaddrop(1);
						//scrSwapWeps();
					}
					if canAdrenalineHeal
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
			if skill_got[46]
			{
				with YungCuzDupe
				{
					if peaceBarriers < peaceBarriersMax
					{
						peaceBarrierTime += 1/max(1,((peaceBarriers*0.87) + 1));
						if peaceBarrierTime > peaceBarrierDuration
						{
							peaceBarrierTime = 0;
							peaceBarriers += 1;
							snd_play_2d(sndYungCuzDupeGainProtection);
							BackCont.shake += 10;
							with instance_create_depth(x,y,depth + 1, GainBarrier)
							{
								owner = other.id;
								sprite_index = other.sprite_index;
							}
							with instance_create_depth(x,y,depth + 1, GainBarrier)
							{
								owner = other.id;
								scale += 0.5;
								alpha = 0;
								alarm[1] = 5;
								sprite_index = other.sprite_index;
							}
						}
					}
				}
				if peaceBarriers < peaceBarriersMax
				{
					peaceBarrierTime += 1/max(1,((peaceBarriers*0.87) + 1));
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
							alarm[1] = 6;
							sprite_index = other.sprite_index;
						}
					}
				}
			}
			if scrIsCrown(36)
			{
				other.stabilize += 1;
				if other.stabilize > other.stabilizeDelay
				{
					other.stabilize = 0;
					with Player
					{
						if ultra_got[62] && altUltra
						{
							if armour < 4 && canHeal
							{
								snd_play(sndCrownOfStability,0.05);
								armour += 1;
								with instance_create(x,y,HealFX)
								{
									sprite_index = sprCrownHealFX;
								}
								with Crown
								{
									if crown == 36
									{
										spr_idle = sprCrown35IdleGottaHeal
										spr_walk = sprCrown35WalkGottaHeal	
									}
								}
							}
							else if armour > 4
							{
								snd_play(sndCrownOfStability,0.05);
								exception = true;
								hitBy = sprite_index;
								image_index=0;
							    sprite_index=spr_hurt;
							    snd_play_2d(snd_hurt_actual, hurt_pitch_variation);
								armour -= 1;
								with instance_create(x,y,HealFX)
								{
									sprite_index = sprCrownDamageFX;
									speed = other.speed;
									direction = other.direction;
								}
								with Crown
								{
									if crown == 36
									{
										spr_idle = sprCrown35IdleGottaDamage
										spr_walk = sprCrown35WalkGottaDamage	
									}
								}
							}
							else
							{
								with Crown
								{
									if crown == 36
									{
										spr_idle = sprCrown35Idle;
										spr_walk = sprCrown35Walk;	
									}
								}
							}
						}
						else
						{
							if my_health < 4 && canHeal
							{
								snd_play(sndCrownOfStability,0.05);
								scrHeal(1,true);
								with instance_create(x,y,HealFX)
								{
									sprite_index = sprCrownHealFX;
								}
								with Crown
								{
									if crown == 36
									{
										spr_idle = sprCrown35IdleGottaHeal
										spr_walk = sprCrown35WalkGottaHeal	
									}
								}
							}
							else if my_health > 4
							{
								snd_play(sndCrownNo,0.05);
								exception = true;
								hitBy = sprite_index;
								image_index=0;
							    sprite_index=spr_hurt;
							    snd_play_2d(snd_hurt_actual, hurt_pitch_variation);
								my_health -= 1;
								with instance_create(x,y,HealFX)
								{
									sprite_index = sprCrownDamageFX;
								}
								with Crown
								{
									if crown == 36
									{
										spr_idle = sprCrown35IdleGottaDamage
										spr_walk = sprCrown35WalkGottaDamage	
									}
								}
							}
							else
							{
								with Crown
								{
									if crown == 36
									{
										spr_idle = sprCrown35Idle;
										spr_walk = sprCrown35Walk;	
									}
								}
							}
						}
					}
				}
			}
		}
	}
detectedCombat = isInCombat;