/// @description xxx
var ps = projectileSpeed;
var ang = random(360);
var am = 18;
var angStep = 360/am;
snd_play(sndFlareExplode);
repeat(am)
{
	with instance_create(x,y,TrapFire)
	{motion_add(ang,ps)
		sprite_index = sprFireLilHunter
	team = other.team}
	ang += angStep;
}
ang += angStep*0.5;
am += 10;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,TrapFire)
	{
		motion_add(ang,ps + 1.8)
		image_speed -= 0.05;
		sprite_index = sprFireLilHunter
		team = other.team
	}
	ang += angStep;
}
instance_create(x,y,WallBreak);
var fbAng = 45;
repeat(4)
{
	with instance_create(x,y,MiniFlameCannonBall)
	{
		image_angle=random(360);
		motion_add(fbAng,3.4);
		team = other.team
	}
	fbAng += 90;
}
instance_destroy();