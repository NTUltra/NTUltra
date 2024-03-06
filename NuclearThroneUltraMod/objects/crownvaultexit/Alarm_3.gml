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
instance_create(x,y,CrownGuardian);