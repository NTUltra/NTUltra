/// @description Burp attack
snd_play(sndBigBanditMeleeHit);
snd_play(sndMinigun);
gunangle = point_direction(x,y,target.x,target.y)
sprite_index = spr_fire
walk = 4+random(4)
alarm[1] = walk+4
var pa = 8;
var atkAngle = 60;
var angleStep = atkAngle / pa;
var l = min(0.5,GetPlayerLoops()*0.1)
var spd = 1+l;
var speedIncrement = 0.5+l*0.5;
var leftRight = 1;
repeat(pa)
{
	with instance_create(xprevious,yprevious,EnemyBullet1)
	{
		motion_add(other.gunangle+(atkAngle*leftRight),spd)
		image_angle = direction
		team = other.team
	}
	atkAngle -= angleStep;
	spd += speedIncrement;
	leftRight*=-1;
}
alarm[1] +=3;