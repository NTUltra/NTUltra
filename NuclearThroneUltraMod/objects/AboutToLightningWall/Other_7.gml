/// @description Spawn Lightning
if target != noone && instance_exists(target)
{
	var xx = x + 8;
	var yy = y + 8;
	var d = point_direction(xx,yy,target.x,target.y)
	mask_index = mskEnemyLaser;
	do {
		xx += lengthdir_x(1,d)
		yy += lengthdir_y(1,d)
	} until (!place_meeting(xx,yy,WallHitMe))
	xx += lengthdir_x(1,d)
	yy += lengthdir_y(1,d)
	d = point_direction(xx,yy,target.x,target.y)
	with instance_create(xx,yy,Lightning)
	{
		image_angle = d;
		team = other.team
		ammo = 2;
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle	
	}
	if !audio_is_playing(sndLightning3)
		snd_play_2d(sndLightning3);
}
instance_destroy();
