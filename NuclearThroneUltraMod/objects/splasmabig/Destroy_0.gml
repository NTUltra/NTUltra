if instance_exists(Player)
{
if Player.skill_got[17] = 1
snd_play(sndPlasmaBigExplodeUpg)
else
snd_play(sndPlasmaBigExplode)
}
instance_create(x,y,WallBreak);
var ang = random(360)
var bi = 0;
repeat(balls)
{
	with instance_create(xprevious,yprevious,SplasmaBall)
	{motion_add(ang,2)
	scrCanHumphry();
	if bi % 1 == 0
		angleDir *= -1
		image_angle = direction
	team = other.team}
	ang += ballstep;
	bi ++;
}

