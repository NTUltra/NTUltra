/// @description Curse
var ang = random(360);
repeat(4)
{
	with instance_create(x,y,Curse) {
		motion_add(ang,2);
	}
	ang += 90;
}
snd_play(sndCursedReminder);
instance_create(x,y,BigWallBreak);
with instance_create(x,y,CrownGuardian)
{
	if instance_exists(Player)
	{
		if Player.skill_got[29]//insomnia
		{
			alarm[1] += 20;
			scrGiveSnooze(0);
		}
	}	
}