/// @description Refuel
alarm[2] = 2;
if alarm[3] < 1
{
	var f = instance_place(x,y,Floor);
	if f != noone
	{
		if (radAmmo < maxRadAmmo && (f.sprite_index = sprFloor144B || f.sprite_index == sprFloor144Explo))
		{
			radAmmo += 1;
			if !audio_is_playing(sndRadPickup)
				snd_play(sndRadPickup,0.05);
		}
	}
}