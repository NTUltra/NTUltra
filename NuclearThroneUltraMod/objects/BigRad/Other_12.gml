/// @description Hostile horror collect
if instance_exists(HostileHorror)
{
	//There should be only one proto statue in the area so that is fine
	if speed = 0
	{
		instance_destroy()
		var nh = instance_nearest(x,y,HostileHorror);
		if instance_exists(nh) && nh != noone
		{
			with nh
				radAmmo += 10;
			if !audio_is_playing(sndRadPickup)
				snd_play(sndRadPickup,0.05);
				
			with instance_create(x,y,BulletHit)
			{
				image_angle = other.image_angle;
				sprite_index=sprEatRad;
				motion_add(image_angle,0.5);
			}
		}
	}
}
