alarm[1] = actTime+irandom(actTime);
with instance_create(x,y,FishBoost)
{
	motion_add(random(360),random(2));
}
if (!instance_exists(target)) || (random(8)<1)
{
	if instance_exists(enemy)
		target = instance_nearest(x,y,enemy)
}
if hspeed > 0
	right = 1
else if hspeed < 0
	right = -1

if target != noone && instance_exists(target) && target.team != team && target.my_health > 0
{
	mp_potential_step(target.x,target.y,0.25,false)
	//GOT A TARGET
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and point_distance(x,y,target.x,target.y) < 400
	{
		var ran = random(10);
		if ran < 9
		{
			BackCont.shake += 1;
			//FIRE
			snd_play(choose(sndWater1,sndWater2,sndTentacle,sndTentacle2),0.1,true)
			//snd_play(sndBloodLauncher,0.1,true);
			if ran < 2
				gunangle = random(360);
			else
				gunangle = point_direction(x,y,target.x+hspeed,target.y+target.vspeed);
				
			motion_add(gunangle,1);
			with instance_create(x,y,Tentacle)
			{
				image_angle = other.gunangle
				creator=other.id;
				team = other.team
				ammo = 11;
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
				{
				sprite_index=sprTentacleSpawn
				image_angle = other.image_angle
				}
			    with instance_create(x,y,FishBoost)
			    {
					motion_add( point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(60)-30,2+random(4));
			    }
			}
			alarm[1] += 4;
		}
		else
		{
			//DONT FIRE
			direction = point_direction(x,y,target.x,target.y)+random(60)-30

			walk = 10+random(10)
		}
	}
	else if random(5) < 4
	{
		//CANT SEE TARGET
		motion_add(random(360),0.4)
		if instance_exists(Player)
		{
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),0.5)
			motion_add(point_direction(x,y,Player.x,Player.y),0.8)
		}
		walk = 10+random(5)
		alarm[1] = walk+2
		gunangle = direction
		
	}
}
else if random(10) < 1
{
	//GOT NO TARGET
	motion_add(random(360),0.4)
	walk = 18+random(10)
	alarm[1] = walk+5
	gunangle = direction
	if hspeed > 0
	right = 1
	else if hspeed < 0
	right = -1
}
if instance_exists(Player)
if point_distance(x,y,Player.x,Player.y) > 64
	mp_potential_step(Player.x,Player.y,0.5,false)