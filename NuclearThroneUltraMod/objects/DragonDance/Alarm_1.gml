/// @description Vertical
var yy =  ystart - height;
var spd = projectileSpeed;
for (var xx =  xstart - width * 1.25; xx < xstart + (width*0.25); xx += step;)
{
	with instance_create(xx,yy,DragonDanceProjectile)
	{
		direction = 270;
		image_angle = direction;
		speed = spd;
	}
}
alarm[1] = spawnRate;