/// @description Spooks!
snd_play(sndExplosion);
BackCont.shake += 10;
snd_play(sndBigGhostDie,0.1);
snd_play(sndSmallGhostDie,0.1);
with instance_create(x,y,BigGhostExplosion)
{
	team = -1;
	dmg = 8
	speed = 0.25;
	with myExplosionMask
	{
		dmg = 6;
	}
	direction = other.direction;
}
var ang = random(360);
var l = 48;
repeat(6)
{
	with instance_create(x + lengthdir_x(l,ang),y + lengthdir_y(l,ang),GhostEffect)
	{
		motion_add(ang,3);
	}
	with instance_create(x + lengthdir_x(l,ang),y + lengthdir_y(l,ang),MediumGhostExplosion)
	{
		team = -1;
		dmg = 5
		speed = 0.25;
		with myExplosionMask
		{
			dmg = 4;
		}
		direction = other.direction;
	}
	ang += 60;	
}
ang += 30;
l += 24;
repeat(6)
{
	with instance_create(x + lengthdir_x(l,ang),y + lengthdir_y(l,ang),GhostEffect)
	{
		motion_add(ang,3);
	}
	with instance_create(x + lengthdir_x(l,ang),y + lengthdir_y(l,ang),SmallGhostExplosion)
	{
		team = -1;
		dmg = 4
		speed = 0.25;
		with myExplosionMask
		{
			dmg = 3;
		}
		direction = other.direction;
	}
	ang += 60;	
}