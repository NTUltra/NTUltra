scrDrop(100,100)
scrDrop(80,50)
scrDrop(70,0)
scrBossKill();
event_inherited()
scrEndBossMusic();
snd_play(sndExplosionL);
var am = 3+min(loops,4);
var angStep = 360/am;
var ang = random(360);
repeat(am)
{
	with instance_create(x,y,myBat)
	{
		motion_add(ang,4);	
	}
	ang += angStep;
}
instance_create(x,y,BigWallBreak);
if alarm[5] >  0
{
	with myLasers[0]
	{
		event_perform(ev_alarm,0);	
	}
	with myLasers[1]
	{
		event_perform(ev_alarm,0);	
	}
}
