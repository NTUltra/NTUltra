/// @description Fire muchas laser
alarm[4] = 1;
snd_play_fire(sndLaser);
snd_play_fire(sndUltraLaserUpg);
snd_play_fire(sndPlasmaHit);
Sleep(40);
scrDrop(6,0);
var t = team;
var al = array_length(laserTell);
var angle = wallDir;
for (var i = 0; i < al; i++)
{
	with instance_create(laserTell[i][0], laserTell[i][1], EnemyLaser)
	{
		image_angle = angle;
		team = t
		event_perform(ev_alarm,0)
	}
}