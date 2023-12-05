/// @description Also explode
event_inherited();
var dir = point_direction(x,y,xprevious,yprevious);
with instance_create(x + lengthdir_x(8,dir),
y + lengthdir_y(8,dir),OExplosion)
{
	team = other.team
	dmg -= 3;
	sprite_index = sprUltraMicroBulletExplode;
	mask_index = sprUltraMicroBulletExplode;
	image_speed += 0.1;
	cost = 0.5;
	radCost = 0.5;
}
snd_play(sndExplosionS,0.3,true,true);
BackCont.shake += 1;