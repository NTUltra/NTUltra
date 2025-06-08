/// @description Start a charge (tell)
alarm[5] = 15;
alarm[1] += 16;
speed = 0;
scrTarget();
if target != noone
{
	spr_idle = sprBigVultureChargeTell;
	spr_walk = sprBigVultureChargeTell;
	snd_play(sndBigVultureChargeTell,0,false,false,10,false,false,0.82,false,id);
	direction = point_direction(x,y,target.x,target.y);
	if target.x < x
		right = -1
	else if target.x > x
		right = 1
}
else
{
	alarm[5] = 0;
	exit;
}
chargeDirection = direction
gunangle = direction;
if loops > 0
{
	var spd = 2;
	repeat(7 + min(18,loops))
	{
		with instance_create(x,y,EnemyBullet1Square)
		{
			team = other.team;
			direction = other.direction;
			speed = spd;
			image_angle = direction;
		}
		with instance_create(x,y,EnemyBullet1Square)
		{
			team = other.team;
			direction = other.direction + 180;
			speed = spd;
			image_angle = direction;
		}
		spd += 1.4;
	}
}