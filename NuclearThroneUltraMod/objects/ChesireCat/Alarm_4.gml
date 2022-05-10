/// @description spinattack
//snd_play(sndDragonStop)
snd_play(sndStatueHurt);
mask_index=mskChesireCat;
alarm[1] +=5;
ammo-=1;
ang = random(360)
var ogAng = ang;
var angStep = 360/10;
repeat(10)
{
with instance_create(xprevious,yprevious,EnemyBullet1Square)
{motion_add(other.ang,2)
image_angle = direction
team = other.team}
ang += angStep;
}
ang = ogAng + (angStep*0.5);
repeat(10)
{
with instance_create(xprevious,yprevious,EnemyBullet1)
{
	motion_add(other.ang,4)
	image_angle = direction
	team = other.team
}
ang += angStep
}
if ammo>0
alarm[4]=12;

