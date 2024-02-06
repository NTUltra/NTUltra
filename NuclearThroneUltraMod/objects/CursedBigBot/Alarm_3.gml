/// @description Fire Laser
if inRange
{
	snd_play(sndQuadMachinegun);
	snd_play(sndLaser, 0.01,false,true,2,false,true,0.8,false, -1, 0, 120)
	scrTarget();
	if target != noone && instance_exists(target) && point_distance(x,y,target.x,target.y) < 400
	{
		var ang = 0;
		var angStep = 45;
		repeat(8) {
			with instance_create(x, y, EnemyLaser) {
				image_angle = ang
				team = other.team
				event_perform(ev_alarm,0)
			}
			ang += angStep;
		}
	}
}
alarm[4] = 1;
