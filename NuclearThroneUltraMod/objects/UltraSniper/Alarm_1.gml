alarm[1] = actTime+random(actTime)
if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;

scrTarget()
if gonnafire = 0
{
	if target != noone
	{
		var dis = point_distance(target.x,target.y,x,y);
		if dis < 350
		{
			if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
			{
				alarm[1] *= 2;
			}
			if dis > 96
			{
				var snipersShooting = 0;
				with UltraSniper
				{
					if gonnafire > 0
						snipersShooting ++;
				}
				if snipersShooting < canSniperTogether
				{
					if random(3) < 2
					{
						snd_play(sndSniperTarget);
						walk = 0
						speed *= 0.5;
						alarm[1] = tellTime+actTime;
						alarm[2] = tellTime;
						with UltraSniper
						{
							if alarm[1]  < actTime * 4
								alarm[1] += actTime*2 + tellTime;
						}
						with UltraCrystal
						{
							if alarm[1]  < actTime * 4
								alarm[1] += actTime*2;
						}
						gonnafire = 1
					}
					else
					{
						direction = point_direction(x,y,target.x,target.y)+random(160)-80
						speed = 1
						walk = alarm[1];
						gunangle = point_direction(x,y,target.x,target.y);
					}
				}
			}
			else
			{
				//Since you have to get close with melee the chance to teleport is reduced while holding a melee weapon
				if (instance_exists(Player) && Player.wep_type[Player.wep] == 0)
					var ran = random(1.5);
				else
					var ran = random(2);
				if ran > 1 || my_health < 10
				{
					direction = point_direction(target.x,target.y,x,y)+random(20)-10
					speed = 1
					walk = actTime+random(actTime*2)
					gunangle = point_direction(x,y,target.x,target.y)
				}
				else
				{
					//TELEPORT
					tries = 0;
					while (dis < 256 && tries < 100)
					{
						var randir = random(360);
						var tf = instance_nearest(target.x + lengthdir_x(300,randir),
						target.y + lengthdir_y(300,randir), Floor);
						var o = 16;
						if tf.object_index == FloorExplo
							o = 8;
						dis = point_distance(target.x,target.y,tf.x+o,tf.y+o);
						if dis > 256 && !place_meeting(x,y,Tangle)
						{
							repeat(4)
							{
								instance_create(x + random_range(-12,12),y + random_range(-12,12),Smoke);
							}
							var ox = x;
							var oy = y;
							snd_play(sndUltraSniperTeleport,0,false,true);
							var angle = 0;
							if loops > 2
							{
								snd_play(sndExploGuardianFire);
								var  ps = 6;
								repeat(4)
								{
									with instance_create(x,y,ExploGuardianBullet)
									{
										//offsetDir = 0;
										motion_add(angle,ps);
										image_angle = direction
										team = other.team
									}
									angle += 90;
								}
							}
							x = tf.x + o;
							y = tf.y + o;
							with instance_create(ox,oy,AssassinTeleport) {
								assx = other.x+o;
								assy = other.y+o;
								c1 = make_color_rgb(181,241,8);
								c2 = make_color_rgb(65,188,21);
							}
							scrForcePosition60fps();
							snd_play(sndUltraSniperTeleport,0,false,true);
							instance_create(x,y,Smoke);
						}
					}
				}
			}
		}
		if target.x < x
			right = -1
		else if target.x > x
			right = 1
	}
	else if random(10) < 1
	{
		motion_add(random(360),1)
		walk = actTime*2+random(actTime)
		alarm[1] = walk+actTime
		gunangle = direction
		if hspeed > 0
			right = 1
		else if hspeed < 0
			right = -1
	}
}

