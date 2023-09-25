///@description AI
alarm[1] = 30+random(20)
if inverted
	alarm[1] -= 5;
scrTarget()
if target != noone
{
	var dis = point_distance(x,y,target.x,target.y)
	if !hasHadIntro && dis < 200
	{
		alarm[2] = 20;
		alarm[1] = 60;
		imageIndex = 0;
		with myKind
			hasHadIntro = true;
		hasHadIntro = true;
	}
	else {
		if active
		{
			//PLAYER EXISTS
			if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and random(5) < 4
			{
				if random(3) > 2
				{
					event_user(0);
				}
				else if random(2) < 1
				{
					//SPAWN TURRET
					var canSpawnTurret = false;
					var xx = x - 64;
					var yy = y - 32;
					var ran = 100;
					var decider = [0,0,0,0];
					if GetPlayerLoops() < 2
					{	
						ran = random(100);
						decider = choose([75,50,25,0],[50,25,0,75],[25,0,75,50],[0,25,75,50]);
					}
					if !collision_point(xx,yy,Turret,false,false) && ran > decider[0]
					{
						canSpawnTurret = true;
						instance_create(xx,yy,BigWallBreak);
						with instance_create(xx,yy,turretToSpawn)
						{
							countKill = false;
							alarm[1] *= 0.8;
						}
					}
					xx = x + 64;
					yy = y - 32;
					if !collision_point(xx,yy,Turret,false,false) && ran > decider[1]
					{
						canSpawnTurret = true;
						instance_create(xx,yy,BigWallBreak);
						with instance_create(xx,yy,turretToSpawn)
						{
							countKill = false;
							alarm[1] *= 0.8;
						}
					}
					xx = x + 64;
					yy = y + 48;
					if !collision_point(xx,yy,Turret,false,false) && ran > decider[2]
					{
						canSpawnTurret = true;
						instance_create(xx,yy,BigWallBreak);
						with instance_create(xx,yy,turretToSpawn)
						{
							countKill = false;
							alarm[1] *= 0.8;
						}
					}
					xx = x - 64;
					yy = y + 48;
					if !collision_point(xx,yy,Turret,false,false) && ran > decider[3]
					{
						canSpawnTurret = true;
						instance_create(xx,yy,BigWallBreak);
						with instance_create(xx,yy,turretToSpawn)
						{
							countKill = false;
							alarm[1] *= 0.8;
						}
					}
			
					if canSpawnTurret
					{
						spr_idle = spr_fire1;
						spr_walk = spr_fire1;
						sprite_index = spr_fire1;
						alarm[1] = image_number/image_speed + 20;
						if inverted
							alarm[1] -= 5;
						imageIndex = 0;
						snd_play(sndTechnomancerSpawnTurret);
					}
				}
			}
			else
			{
				//DONT SEE PLAYER
				if random(4) < 1
				{
					event_user(0);
				}
			}
		}
		else
		{
			//Not active make nearest active
			var t = target;
			var d = 999999;
			var nd;
			var nearestId = -1;
			with myKind
			{
				nd = point_distance(x,y,t.x,t.y)
				if nd < d
				{
					d = nd;
					nearestId = id;
				}
			}
			if nearestId != -1 && !nearestId.active
			{
				with nearestId
				{
					event_user(1);
				}
			}
		}
	}
}