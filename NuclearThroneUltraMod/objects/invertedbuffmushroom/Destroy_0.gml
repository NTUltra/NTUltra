event_inherited()
scrDrop(45,30)

var ang = random(360);
var am = 6;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,Dust)
	{
		motion_add(ang,1);	
	}
	ang+=angStep;
}
snd_play(sndExplosionL);
with instance_create(x,y,PurpleExplosion)
	team = other.team;