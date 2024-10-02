if fire > 0
{
	if fire != 3
	{
		snd_play(sndVenomTrapTriggers)
	}
fire -= 1
if side = 1||loop
{
	if !position_meeting(x-4,y+8,Wall)
		with instance_create(x-4,y+8,NarrowEnemyVenomShank)
		{
			team = 7;
			bleedAngle = 180;
			hspeed = -8;
			dodgeAble = false;
			image_angle = direction;
		}
	if !position_meeting(x+20,y+8,Wall)
		with instance_create(x+20,y+8,NarrowEnemyVenomShank)
		{
			team = 7;
			bleedAngle = 0;
			hspeed = 8;
			dodgeAble = false;
			image_angle = direction;
		}
}
if side = 0||loop
{
	if !position_meeting(x+8,y-4,Wall)
		with instance_create(x+8,y-4,NarrowEnemyVenomShank)
		{
			team = 7;
			bleedAngle = 270;
			vspeed = -8;
			dodgeAble = false;
			image_angle = direction;
		}
	if !position_meeting(x+8,y+20,Wall)
		with instance_create(x+8,y+20,NarrowEnemyVenomShank)
		{
			team = 7;
			bleedAngle = 90;
			vspeed = 8;
			dodgeAble = false;
			image_angle = direction;
		}
}
}
alarm[1] = 5;