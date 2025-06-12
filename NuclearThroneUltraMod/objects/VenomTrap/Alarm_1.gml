if fire > 0
{
	
	fire -= 1
	var o = 8;
	var didFire = false;
	if side = 1||loop
	{
		if !position_meeting(x-4,y+8,Wall) && collision_point(x - 4,y+8,Floor,false,false)
		{
			didFire = true;
			with instance_create(x-4,y+8,NarrowEnemyVenomShank)
			{
				team = other.team;
				bleedAngle = 180;
				hspeed = -8;
				dodgeAble = false;
				image_angle = direction;
				x += lengthdir_x(o,direction + 180);
				y += lengthdir_y(o,direction + 180);
			}
		}
		if !position_meeting(x+20,y+8,Wall) && collision_point(x+20,y+8,Floor,false,false)
		{
			didFire = true;
			with instance_create(x+20,y+8,NarrowEnemyVenomShank)
			{
				team = other.team;
				bleedAngle = 0;
				hspeed = 8;
				dodgeAble = false;
				image_angle = direction;
				x += lengthdir_x(o,direction + 180);
				y += lengthdir_y(o,direction + 180);
			}
		}
	}
	if side = 0||loop
	{
		if !position_meeting(x+8,y-4,Wall) && collision_point(x +8,y - 4,Floor,false,false)
		{
			didFire = true;
			with instance_create(x+8,y-4,NarrowEnemyVenomShank)
			{
				team = other.team;
				bleedAngle = 270;
				vspeed = -8;
				dodgeAble = false;
				image_angle = direction;
				x += lengthdir_x(o,direction + 180);
				y += lengthdir_y(o,direction + 180);
			}
		}
		if !position_meeting(x+8,y+20,Wall)&& collision_point(x - 4,y+20,Floor,false,false)
		{
			didFire = true;
			with instance_create(x+8,y+20,NarrowEnemyVenomShank)
			{
				team = other.team;
				bleedAngle = 90;
				vspeed = 8;
				dodgeAble = false;
				image_angle = direction;
				x += lengthdir_x(o,direction + 180);
				y += lengthdir_y(o,direction + 180);
			}
		}
	}
	if didFire && fire != 3
	{
		snd_play(sndVenomTrapTriggers)
	}
}
else if fire > -1
{
	if side = 1
		side = 0
	else
		side = 1
	fire = -2;
}
alarm[1] = 5;