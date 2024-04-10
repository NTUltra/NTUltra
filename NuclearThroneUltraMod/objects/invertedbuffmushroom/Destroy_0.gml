event_inherited()
scrDrop(35,30)

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
if !sleeping
{
	snd_play(sndExplosionL);
	with instance_create(x,y,PurpleExplosion)
		team = other.team;
}