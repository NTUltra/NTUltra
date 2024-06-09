/// @description Burp attack square
snd_play(sndBigBanditMeleeHit);
snd_play(sndMinigun);
if target != noone && instance_exists(target)
	gunangle = point_direction(x,y,target.x,target.y)
forceAnimation = spr_fire;
forceAnimationIndex = 0;
forceAnimationDuration = sprite_get_number(forceAnimation);
walk = 4+random(4)
alarm[1] = walk+4
var pa = 8;
var atkAngle = 60;
var angleStep = atkAngle / pa;
var spd = 1;
var speedIncrement = 0.6;
var leftRight = 1;
repeat(pa)
{
	with instance_create(xprevious,yprevious,EnemyBullet1Square)
	{
		motion_add(other.gunangle+(atkAngle*leftRight),spd)
		image_angle = direction
		team = other.team
	}
	atkAngle -= angleStep;
	spd += speedIncrement;
	leftRight*=-1;
}