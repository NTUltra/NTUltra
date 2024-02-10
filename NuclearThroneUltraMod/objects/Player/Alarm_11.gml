/// @description Robot curse ultra
alarm[11] = 46;
if !outOfCombat
{
	if skill_got[17] = 1
		snd_play_fire(sndLaserUpg)
	else
		snd_play_fire(sndLaser)
	var ang = curseBotAngle;
	repeat(4)
	{
		with instance_create(x, y, Laser) {
			image_angle = ang
			team = other.team
			event_perform(ev_alarm,0)
		}
		ang += 90;
	}
}
curseBotAngle += 45;
var ang = curseBotAngle
repeat(4)
{
	with instance_create(x,y,Curse) {
		motion_add(ang,2);
	}
	ang += 90;
}