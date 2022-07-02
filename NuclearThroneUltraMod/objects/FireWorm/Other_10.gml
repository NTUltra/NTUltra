/// @description Wazer
wkick = 4
laserDirection = point_direction(x,y,target.x,target.y);
var predictDirection = point_direction(x,y,target.x+hspeed,target.y+vspeed);
var ad = angle_difference(predictDirection,laserDirection);
if ad > 0
{
	laserDir = -1;
}
else if ad < 0
{
	laserDir = 1;	
}
else
{
	laserDir = choose(1,-1);	
}
laserOffset = laserOffsetMax*laserDir;
angleStep = (laserOffsetMax*2) / (laserDuration - tellTime)
var dir = laserDirection-laserOffset;
alarm[2] = laserDuration;
if target.x < x
	right = -1
else if target.x > x
	right = 1

snd_play(sndFlare);
snd_play(sndWazerStart);
myLaser = instance_create(x+(lox*right),y,EnemyWazer);
with myLaser {
	team = other.team;
	maxRange = other.maxRange;
	alarm[0] = other.laserDuration;
	owner = other.id;
	camKick = 0;
	camShake = 1;
	wkick = 4;
	image_angle = dir;
}
walk = 0;
alarm[1] = laserDuration+10;
sprite_index = spr_fire;
