/// @description fire lasers
scrTarget();
if target > -1 && instance_exists(target) && point_distance(x,y,target.x,target.y) < 300
{
	snd_play(sndLaser, 0.01,false,true,2,false,true,0.8,false, -1, 0, 120)
	var ang = originalAngle;
	with instance_create(x, y, EnemyLaser) {
		image_angle = ang
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x, y, EnemyLaser) {
		image_angle = ang + 90
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x, y, EnemyLaser) {
		image_angle = ang + 180
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x, y, EnemyLaser) {
		image_angle = ang + 270
		team = other.team
		event_perform(ev_alarm,0)
	}
}
alarm[3] = 1;