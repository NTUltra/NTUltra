/// @description Intestines!
if instance_exists(creator)
{
	x = creator.x;
	y = creator.y;
}
var ys = scale;
var tentacleLength = tl;
var am = lerp(1,24,min(1,alienIntestines / 320))
if am > 0
{
	var i = 0;
	var ang = aim + 180;
	var angStep = 360/am;
	repeat(am)
	{
		with instance_create(x,y,Tentacle)
		{
			image_yscale += ys;
			image_angle = ang;
			creator = other.creator;
			team = other.team
			ammo = tentacleLength + i*2
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			{
				sprite_index=sprTentacleSpawn
				image_angle = other.image_angle
				direction = image_angle;
				speed = 1;
			}
			with instance_create(x,y,FishBoost)
			{
				motion_add(ang+random(60)-30,2+random(4) );
			}
		}
		ang += angStep;
		i++;
	}
}