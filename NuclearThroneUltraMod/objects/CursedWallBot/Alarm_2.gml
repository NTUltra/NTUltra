/// @description fire Laser
if inRange
{
	snd_play(sndLaser, 0.01,false,true,2,false,true,0.8,false, -1, 0, 120)
	var ang = originalAngle + 180;
	with instance_create(x, y, EnemyLaser) {
		image_angle = ang
		team = other.team
		event_perform(ev_alarm,0)
	}
}
alarm[3] = 1;