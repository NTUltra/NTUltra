/// @description Robot curse ultra
alarm[11] = 60;
if !outOfCombat
{
	if skill_got[17] = 1
		snd_play_fire(sndLaserUpg)
	else
		snd_play_fire(sndLaser)
	var ang = curseBotAngle;
	with instance_create(x, y, Laser) {
		image_angle = ang
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x, y, Laser) {
		image_angle = ang + 90
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x, y, Laser) {
		image_angle = ang + 180
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x, y, Laser) {
		image_angle = ang + 270
		team = other.team
		event_perform(ev_alarm,0)
	}
}
curseBotAngle += 45;