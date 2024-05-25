/// @description Tentacle!
event_inherited();
if team == 2
{
	snd_play_fire(choose(sndTentacle,sndTentacle2));
	var xx = x;
	var yy = y;
	if instance_exists(Wall)
		while !collision_point(xx,yy,Floor,false,false)
		{
			xx += lengthdir_x(1,direction+180);
			yy += lengthdir_y(1,direction+180);	
		}

	var a = ceil(speed*0.5);
	if !collision_point(xx + lengthdir_x(2,direction),yy + lengthdir_y(2,direction),Wall,false,false)
		with instance_create(xx,yy,Tentacle)
		{
			image_angle = other.direction;
			team = other.team
			ammo = a;
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			{
				sprite_index=sprTentacleSpawn
				image_angle = other.image_angle
			}

			with instance_create(x,y,FishBoost)
			{
				motion_add(other.image_angle+random(60)-30,2+random(4));
			}
		}
	with instance_create(xx,yy,Tentacle)
	{
		image_angle = other.direction + 180;
		team = other.team
		ammo = a;
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		{
			sprite_index=sprTentacleSpawn
			image_angle = other.image_angle
		}

		with instance_create(x,y,FishBoost)
		{
			motion_add(other.image_angle+random(60)-30,2+random(4));
		}
	}
	BackCont.viewx2 += lengthdir_x(1,direction+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(1,direction+180)*UberCont.opt_shake
	BackCont.shake += 1
}