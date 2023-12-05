/// @description BOUNC
if wallHits < 1
{
	move_bounce_solid(false);
	x -= lengthdir_x(14,image_angle);
	y -= lengthdir_y(14,image_angle);
	speed = clamp(speed*2,6,24);
	image_angle = direction;
	instance_create(x,y,Smoke);
	wallHits ++;
	image_angle = direction;
	snd_play(sndShotgunHitWall,0.1,true);
	if isGaseous
	{
		with instance_create(x,y,ToxicThrowerGas)
		{
			image_xscale -= 0.1
			image_yscale -= 0.1
			team = other.team;	
		}
	}
}
else
{
	event_inherited();	
}

