/// @description Spectacular
with MusCont {
	audio_stop_sound(song)
}
snd_play_2d(sndNothing2DeadStart);
with projectile
{
	if team != 2
	{
		instance_destroy(id,false);	
	}
}
with PopoNade
{
	instance_destroy(id,false)
}
scrEnemyDeathEvent();
scrEndBoss();
scrBossKill();
Sleep(200)
if isInverted
{
	with instance_create(x,y,ThroneExplo)
	{
		rr = 136;//Smaller explosion
		sprite_index = sprInvertedNothing2Death;
		snd_death = sndNothing2Dead;
		explo = PurpleExplosion;
	}
}
else
{
	with instance_create(x,y,ThroneExplo)
	{
		rr = 136;//Smaller explosion
		sprite_index = sprNothing2Death;
		snd_death = sndNothing2Dead;
	}
}