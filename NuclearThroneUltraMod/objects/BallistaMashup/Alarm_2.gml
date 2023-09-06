snd_play_fire(sndDoubleShotgun);
with instance_create(colX,colY,ShotgunEraserBurst)
{
	thisAimDirection = other.direction + 180;
	creator = other.id
	if instance_exists(Player)
	{
		angle *= Player.accuracy;
		angleStep = angle/projectileAmount;
	}
	ammo = 3;
	time = 1
	team = other.team
	event_perform(ev_alarm,0)
}
alarm[4] = 30;