/// @description BOSS!
if audio_is_playing(sndSheepLoop)
	audio_stop_sound(sndSheepLoop);
instance_destroy();
instance_create(x,y+6,BallBoss);
with MusCont
{
	if audio_is_playing(song)
	audio_stop_sound(song);
	song = mus100
	snd_loop(song);
}
