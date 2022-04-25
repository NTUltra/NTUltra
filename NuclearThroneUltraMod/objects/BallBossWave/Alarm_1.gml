/// @description Winner?
if instance_number(enemy) <= instance_number(IDPDVan) && !instance_exists(LilHunterFly) && !instance_exists(InvertedLilHunterFly)
{
	with MusCont
	{
		audio_stop_sound(song);
		//song = mus100
		//snd_loop(song);
	}
	with BecomeBallBoss {
		event_user(1);
	}
}
