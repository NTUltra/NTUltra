with instance_create(x,y,ChestOpen)
sprite_index = sprMorphWeaponChestOpen

instance_create(x,y,FXChestOpen)
with instance_create(x,y,Morph)
{
	snd_play(sndMorphStop);
	team = 2;
}
