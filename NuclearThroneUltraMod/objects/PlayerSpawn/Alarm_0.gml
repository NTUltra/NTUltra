/// @description Respawn
with Player
{instance_destroy();}

if (myCorpse == -1 || !instance_exists(myCorpse))
	myCorpse = id;
instance_create(myCorpse.x,myCorpse.y,Player);
instance_destroy(myCorpse);
if race == 9//Delete chicken head
with Corpse
{
	if sprite_index == sprMutant9HeadIdle || sprite_index == sprMutant9BHeadIdle || sprite_index == sprMutant9DHeadIdle || sprite_index == sprMutant9EHeadIdle
		instance_destroy();
}
snd_play(sndStatueCharge);
with Player//Data to keep
{
	//bskin=other.bskin;
	inverted = other.inverted;
	lastsubarea = other.lastsubarea;
	ultramod = other.ultramod;
	ultimategamble=true;
	skeletonlives=other.skeletonlives;
	livesRegain = other.livesRegain;
	race = other.race
	crown = 1;//other.crown
	lastarea = other.lastarea;
	area = other.area//other.lastarea;
	loops = other.loops;
	hard = other.hard;
	kills = other.kills;
	subarea=other.subarea;
	boostLevel = other.level;
	alarm[3]=max(300,31*boostLevel);//immunity
	ammo[1] = typ_ammo[1] * 3
    ammo[2] = typ_ammo[2] * 3
    ammo[3] = typ_ammo[3] * 3
    ammo[4] = typ_ammo[4] * 3
    ammo[5] = typ_ammo[5] * 3
	event_perform(ev_alarm,0);
	//event_perform(ev_other,ev_room_end);
	visible=true;
	snd_play(snd_wrld, 0, false, false);
	wep = 0;
	bwep = 0;
	cwep = 0;
	myShield = instance_create(x,y,EuphoriaShield)
	with myShield
	{
		owner = other.id
		image_speed=0.2;
	}
	if !instance_exists(GunWarrant)
		instance_create(x,y,GunWarrant);
	else
	{
		with GunWarrant
		{
			sprite_index = sprGunWarrantStart;
			image_index = 0;
		}
	}
	//Infinite ammo
	alarm[2] = alarm[3];
	with instance_create(x,y,RespawnBuff)
	{
		alarm[0] = other.alarm[3];	
	}
	with instance_create(x,y,RespawnLightning)
	{
		amount = other.boostLevel-1;
		debug("amount: ",amount);
	}
}
scrUnlockGameMode(25,"FOR GETTING RESURRECTED");


instance_destroy();

