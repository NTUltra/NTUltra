/// @description BOUNC
if wallHits < 1
{
	x -= lengthdir_x(14,image_angle);
	y -= lengthdir_y(14,image_angle);
	move_bounce_solid(false);
	speed = clamp(speed*2,6,28);
	if instance_exists(enemy)
	{
		var n = instance_nearest(x,y,enemy);
		if n != noone && !collision_line(x,y,n.x,n.y,Wall,false,false)
		{
			direction = point_direction(x,y,n.x,n.y);	
		}
	}
	image_angle = direction;
	instance_create(x,y,Smoke);
	wallHits ++;
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

