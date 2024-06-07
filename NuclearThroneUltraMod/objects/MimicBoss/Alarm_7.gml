/// @description Energy
wkick = 4
scrTarget()
if instance_exists(target) && target != noone && ammo > 0
{
	if point_distance(x,y,target.x,target.y) > 200 || collision_line(x,y,target.x,target.y,Wall,false,false)
	{
		BackCont.shake += 3;
		snd_play(sndIonCharge);
		with instance_create(target.x,target.y,EnemyIon) {
			alarm[0] = 20;
			team = other.team;
		}
		ammo = 0;
	}
	else if point_distance(x,y,target.x,target.y) > 96
	{
		BackCont.shake += 1;
		ammo -= 1;
		snd_play_fire(sndPlasma)
		motion_add(gunangle,acc);
		walk = fireRate;
		with instance_create(x+lengthdir_x(6,gunangle),y+lengthdir_y(6,gunangle),PopoPlasmaBall)
		{
			sprite_index = sprPlasmaBall;
			motion_add(other.gunangle + random(30) - 15,4)
			maxSpeed = 7.5;
			image_angle = direction
			team = other.team
		}
	}
	else if ammo == maxAmmo
	{
		BackCont.shake += 2;
		snd_play(sndLaser);
		with instance_create(x,y,EnemyLaser)
		{
			image_angle = other.gunangle - (angle_difference(point_direction(x,y,other.target.x,other.target.y),other.gunangle)*0.25);
			team = other.team
			event_perform(ev_alarm,0)
		}
		ammo = 0;
	}
	gunangle = point_direction(x, y, target.x, target.y);
}
if ammo < 1
{
	alarm[1] = actTime * 2 + random(actTime);
}
else
{
	alarm[7] = fireRate + 2;
	alarm[1] = fireRate + 2 + actTime*2;
}