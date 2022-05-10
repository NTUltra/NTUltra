/// @description Revive popo
instance_destroy();
snd_play(sndFreakPopoRevive);
with myCorpse
{
	instance_destroy();
	with instance_create(x,y,ReviveFX) {
		sprite_index = sprPopoRevive;
	}
}
with instance_create(x,y,IDPDFreak)
{
	alarm[1] *= 0.5;
	scrSleepyPopo()
	lifes = other.lifes;
}
