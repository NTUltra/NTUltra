/// @description Horizontal
BackCont.shake += 2;
var xx =  xstart - width * 1.25;
var spd = projectileSpeed;
for (var yy =  ystart - height; yy < ystart + height; yy += step;)
{
	with instance_create(xx,yy,DragonDanceProjectile)
	{
		direction = 0;
		image_angle = direction;
		speed = spd;
	}
}
alarm[0] = spawnRate;