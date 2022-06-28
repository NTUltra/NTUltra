with Player
{instance_destroy();}

if (myCorpse == -1 || !instance_exists(myCorpse))
	myCorpse = id;
instance_create(myCorpse.x,myCorpse.y,Player);
instance_destroy(myCorpse);
if race == 9//Delete chicken head
with Corpse
{
	if sprite_index == sprMutant9HeadIdle || sprite_index == sprMutant9BHeadIdle
		instance_destroy();
}
snd_play(sndStatueCharge);
with Player//Data to keep
{
	alarm[3]=300;//immunity
	//bskin=other.bskin;
	ultramod = other.ultramod;
	ultimategamble=true;
	skeletonlives=other.skeletonlives;
	race = other.race
	crown = other.crown
	lastarea = other.lastarea;
	area = other.area//other.lastarea;
	loops = other.loops;
	hard = other.hard;
	kills = other.kills;
	subarea=other.subarea;
	boostLevel = other.level;
	rad = round(GetPlayerMaxRad()*0.6);
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
}
scrUnlockGameMode(25,"FOR GETTING RESURRECTED");


instance_destroy();

