/// @description Sound again
if instance_exists(Player)
{
	if Player.skill_got[17]
		snd_play_fire(sndEnergyShotgunUpg);
	else
		snd_play_fire(sndEnergyShotgun);	
}
alarm[1] = 2;
if ammo < 3
	alarm[1] = 1;