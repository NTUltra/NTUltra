///scrSecondaryPowers();
// /@description
///@param
function scrSecondaryPowers() {
	if (skill_got[maxskill + 1])
	{
		switch (race)
		{
			//CRYSTAL
			case 2:
				if targetPickup == noone && instance_exists(CrystalShield) && !instance_exists(CrystalTorpedo) && (KeyCont.key_pick[p] == 1 || KeyCont.key_pick[p] == 2)
				{
					if my_health > 1
					{
						if armour > 0
							armour -= 1;
						else
							DealDamage(1,false,false,false);
					
						hitBy = sprite_index;
						exception=true;
						sprite_index = spr_hurt
						image_index = 0
						//snd_play_2d(snd_hurt, hurt_pitch_variation)
						with CrystalShield
						{
							instance_destroy();
							with instance_create(x,y,AnimDestroy)
							{
								sprite_index = other.spr_disappear;
								image_index = 3;
							}
						}
						var a = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
						BackCont.shake += 10;
						BackCont.viewx2 += lengthdir_x(15,a)*UberCont.opt_shake
						BackCont.viewy2 += lengthdir_y(15,a)*UberCont.opt_shake
						instance_create(x,y,CrystalTorpedo);
						snd_play(sndCrystalTorpedo);
					}
					else if KeyCont.key_pick[p] == 1
					{
						snd_play_2d(sndCantTorpedo,0.1);
						BackCont.shake += 10;
					}
				}
			break;
			//EYES
			case 3:
				if targetPickup == noone && KeyCont.key_pick[p] == 1
				{
					var a;
					if !instance_exists(MindField)
					{
						a = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
						with instance_create(x,y,EyesMindFieldTransition)
						{
							targetX = UberCont.mouse__x;
							targetY = UberCont.mouse__y;
							distance = point_distance(x,y,targetX,targetY);
							dir = point_direction(x,y,targetX,targetY);
						}
						if !instance_exists(MindFieldSound)
						{
							with instance_create(x,y,MindFieldSound)
							{
								tx = UberCont.mouse__x;
								ty = UberCont.mouse__y;
							}
						}
					}
					else
					{
						a = point_direction(MindField.x,MindField.y,UberCont.mouse__x,UberCont.mouse__y);
					}
					BackCont.viewx2 += lengthdir_x(10,a)*UberCont.opt_shake
					BackCont.viewy2 += lengthdir_y(10,a)*UberCont.opt_shake
					BackCont.shake += 5
					instance_create(UberCont.mouse__x,UberCont.mouse__y,MindField);
				}
			break;
			//YV
			case 6:
				if targetPickup == noone && KeyCont.key_pick[p] == 1 && bwep != 0
				{
					var lowa = 0;
					var lowb = 0;
					var lowc = 0;
					if skill_got[35]
					{
						lowa = wep_load[wep]*-2;
						lowb = wep_load[bwep]*-2;
						lowc = wep_load[cwep]*-2;
					}
					if reload > lowa
					{
						if breload <= 0
						{
							with instance_create_depth(x,y,depth-1,AnimDestroy)
							{
								sprite_index = sprYVQuickReload;
								image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
							}
							snd_play_2d(sndYVQuickReload);
						
							var reduction = reload + lowa;
							breload += reduction;
							reload = lowa;
						}
						else
						{
							snd_play_2d(sndYVCantQuickReload);
							instance_create(x,y,YVCantQuickReload);
						}
					}
				}
			break;
			//STEROIDS
			case 7:
				if targetPickup == noone && (KeyCont.key_pick[p] == 1 || KeyCont.key_pick[p] == 2)
				{
					var lowa = 0;
					var lowb = 0;
					var lowc = 0;
					if skill_got[35]
					{
						lowa = wep_load[wep]*-2;
						lowb = wep_load[bwep]*-2;
						lowc = wep_load[cwep]*-2;
					}
					var representingCost = round(wep_cost[wep]);
					var ignoreAmmo = false;
					if ultra_got[70]
						representingCost = min(representingCost,0.5);
					else if scrIsCrown(13)//Crown of drowning
					{
						representingCost = 0;
					}
					else if scrIsGamemode(48)
					{
						representingCost = 0;
						ignoreAmmo = true;
					}
					if can_shoot = 1 and ((ignoreAmmo || ammo[wep_type[wep]] >= representingCost || wep_type[wep] == 0) and rad>=wep_rad[wep] || alarm[2]>0)
					if reload <= 0 && breload <= 0
					{
						speed = 0;
						var acc = accuracy;
						accuracy *= 0.5;
						scrFire();
						scrSwapWeps();
						scrFire();
						scrSwapWeps();
						reload -= 1;
						breload -= 1;
						reload -= ceil(wep_load[wep] * 0.15);
						breload -= ceil(wep_load[bwep] * 0.15);
						accuracy = acc;
						if (instance_exists(SpeedLockout))
						{
							with SpeedLockout
							{
								alarm[0] = lockoutTime;	
							}
						}
						else
						{
							with instance_create(x,y,SpeedLockout)
							{
								resetSpeed = other.maxSpeed;
							}
							maxSpeed = 0;
							if skill_got[2]
								scrApplyExtraFeet();
						}
					}
				}
			break;
			//ROBOT
			case 8:
				if targetPickup == noone && (KeyCont.key_pick[p] == 1)
				{
					with HoldToEatEnemy
					{
						instance_destroy();
						snd_play(sndRobotEatFail);
					}
					if !instance_exists(HoldToEatEnemy)
					{
						var n = instance_nearest(x,y,enemy);
						if n != noone && n.my_health > 0 && n.team != other.team && point_distance(x,y,n.x,n.y) < 64
						{
							with instance_create(x,y,HoldToEatEnemy)
							{
								target = n;
								image_speed = min(1,8 / n.my_health);
							}
						}
						else
						{
							BackCont.shake += 5;
							snd_play(sndRobotEatFail);
						}
					}
				}
			break;
			//HANDS
			case 27:
				if !instance_exists(HandBlock) && (KeyCont.key_pick[p] == 1 || KeyCont.key_pick[p] == 2)
				{
					with Hand
					{
						BackCont.shake += 10;
						snd_play(sndHumphryHalt);
						if alarm[1] > 0
							alarm[1] += 5;
						else if alarm[2] > 0
							alarm[2] += 5;
						previousSprite = sprite_index;
						sprite_index = spr_block;
						with instance_create(x,y,HandBlock) {
							team = other.team;	
						}
					}
				}
			break;
		}
	}
}