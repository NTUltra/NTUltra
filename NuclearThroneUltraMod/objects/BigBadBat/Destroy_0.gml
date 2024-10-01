scrDrop(100,100)
scrDrop(80,20)
scrDrop(50,0)
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
		alarm[1] = 10;
		existTime = 25;
		motion_add(ang,4);
		if instance_exists(Player) && Player.skill_got[29] {
			alarm[1] += 60;
			scrGiveSnooze();
		}
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