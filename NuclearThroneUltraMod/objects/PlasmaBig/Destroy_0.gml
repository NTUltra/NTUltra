if instance_exists(Player)
{
if Player.skill_got[17] = 1
snd_play(sndPlasmaBigExplodeUpg)
else
snd_play(sndPlasmaBigExplode)
}
instance_create(x,y,WallBreak);
var ang = random(360)
repeat(balls)
{
	with instance_create(xprevious,yprevious,PlasmaBall)
	{motion_add(ang,2)
	image_angle = direction
	originalDirection=ang;
	team = other.team}
	ang += ballstep;
}

