/// @description Some more booms
snd_play(sndExplosionS);
var xx = x+lengthdir_x(length,image_angle+180+30);
var yy = y+lengthdir_y(length,image_angle+180+30);

instance_create(xx,yy,SmallExplosion);

var xx = x+lengthdir_x(length,image_angle+180-30);
var yy = y+lengthdir_y(length,image_angle+180-30);

instance_create(xx,yy,SmallExplosion);
ammo--;
if ammo > 0
{
	length += 16;
	alarm[0] = 2;
}
else
{
	instance_destroy();	
}