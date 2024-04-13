/// @description cleanup projectiles
ds_list_destroy(suckedProjectiles);
//Stop loop sfx
if audio_is_playing(sndSuckCannonLoop)
{
	audio_stop_sound(sndSuckCannonLoop);
}