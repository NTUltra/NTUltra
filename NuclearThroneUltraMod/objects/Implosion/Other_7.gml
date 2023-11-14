if sprite_index = sprPortalSpawn
{
image_speed = 0.4
sprite_index = sprPortal;
if(alarm[1]<1)
{
	if kraken
	alarm[1]=120 * duration;
	else
	alarm[1]=46 * duration;//duration of lightningshooting
	snd_play(sndThunder)
}
}

if sprite_index=sprPortalDisappear
{
audio_stop_sound(sndPortalLoop)
instance_destroy();
}

