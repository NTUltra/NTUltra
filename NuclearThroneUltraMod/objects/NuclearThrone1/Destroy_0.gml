/// @description Spectacular
with MusCont {
	audio_stop_sound(song)
}
snd_play_2d(sndNothingDeath1);
instance_create(x,y,ThroneExplo);
if instance_exists(Player)
{
	if Player.onlyusemerevolver
	{//ONE WEAPON ONLY UNLOCK!
		scrUnlockGameMode(1,"FOR REACHING AND#BEATING THE THRONE#USING ONLY A REVOLVER");
	}
	if Player.onlyusemegold && Player.race == 20
	{
		scrUnlockBSkin(20,"FOR BEATING THE THRONE#USING ONLY GOLD WEAPONS#AS BUSINESSHOG",0);
	}
	if Player.race == 23
	{
		if UberCont.opt_gamemode == 19 && UberCont.opt_discs >= 6 && UberCont.opt_discdamage >= 2
			scrUnlockCSkin(23,"FOR BEATING THE THRONE#ON DISC ROOM MODE#AS FROG#WHAT A MADLAD!",19);
	}
	if UberCont.opt_gamemode == 25
	{
		scrUnlockGameMode(34,"FOR KILLING THE THRONE#IN THE SURVIVAL ARENA",25);
	}
}
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
