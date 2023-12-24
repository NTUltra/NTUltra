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
	canCrownOfProtection = other.canCrownOfProtection;
	gotMinimumArmour = other.gotMinimumArmour;
	gunGameKill = other.gunGameKill;
	rnglevelloop = other.rnglevelloop;
	firedthislevel = other.firedthislevel;
	firedOnce = other.firedOnce;
	seconds = other.seconds;
	microseconds = other.microseconds;
	screenshake400 = other.screenshake400;
	weaponspickedup = other.weaponspickedup;
	onlyusemerevolver = other.onlyusemerevolver;
	inverted = other.inverted;
	ultramod = other.ultramod;
	ultimategamble=true;
	skeletonlives=other.skeletonlives;
	livesRegain = other.livesRegain;
	race = other.race
	crown = other.crown
	if scrIsCrown(20) {
		maxarmour += 1;	
	}
	lastsubarea = other.lastsubarea;
	lastarea = other.lastarea;
	area = other.area//other.lastarea;
	loops = other.loops;
	hard = other.hard;
	kills = other.kills;
	subarea= other.subarea;
	boostLevel = other.level;
	crownvisits = other.crownvisits;
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
	if other.freakRespawn
	{
		if instance_exists(ReviveRogue)
		{
			x = ReviveRogue.x;
			y = ReviveRogue.y;
		}
		skill_got = other.skill_got;
		ultra_got = other.ultra_got;
		level = other.level;
		altUltra = other.altUltra;
		rogueammo = other.rogueammo;
		rogueammomax = other.rogueammomax;
		rad = other.rad;
		typ_ammo = other.typ_ammo;
		wep_name = other.wep_name;
		wep_type = other.wep_type;
		wep_auto = other.wep_auto;
		wep_load = other.wep_load;
		wep_cost = other.wep_cost;
		wep_sprt = other.wep_sprt;
		wep_area = other.wep_area;
		wep_text = other.wep_text;
		wep_swap = other.wep_swap;
		wep_rad	 = other.wep_rad;
		typ_amax = other.typ_amax;
		ammo[1] = clamp(other.ammo[1],ammo[1],typ_amax[1]);
		ammo[2] = clamp(other.ammo[2],ammo[2],typ_amax[2]);
		ammo[3] = clamp(other.ammo[3],ammo[3],typ_amax[3]);
		ammo[4] = clamp(other.ammo[4],ammo[4],typ_amax[4]);
		ammo[5] = clamp(other.ammo[5],ammo[5],typ_amax[5]);
		maxhealth = other.maxhealth;
		humphrySkill = other.humphrySkill;
		ultimategamble = other.ultimategamble;
		bettermelee = other.bettermelee;
		betterlaserbrain = other.betterlaserbrain;
		betterpluto = other.betterpluto;
		betterrabbitpaw = other.betterrabbitpaw;
		betterrecyclegland = other.betterrecyclegland;
		betterboltmarrow = other.betterboltmarrow;
		betterTail = other.betterTail;
		accuracy = other.accuracy;
		standartAccuracy = other.standartAccuracy;
		invertedchance = other.invertedchance;
		hard = other.hard;
		maxSpeed = other.maxSpeed;
		hammerheadcounter = other.hammerheadcounter;
		lag = other.lag;
		hardshell = other.hardshell;
		visitedCrib = other.visitedCrib;
		meltingd = other.meltingd;
		heavyheart = other.heavyheart;
		freeArmourStrike = other.freeArmourStrike;
		armour = other.armour;
		maxarmour = other.maxarmour;
		randomlySelected = other.randomlySelected;
		reachedUltra = other.reachedUltra;
		tookDestiny = other.tookDestiny;
		pSpeedBoost = other.pSpeedBoost;
		inverted = other.inverted;
		cash = other.cash;
		lstCash = other.lstCash;
		maxCash = other.maxCash;
		canHeal = other.canHeal;
		horrorEtaken = other.horrorEtaken;
		hogpoints = other.hogpoints;
		usedHogInvestment = other.usedHogInvestment;
		raddrop = other.raddrop;
		ultramod = other.ultramod;
		skillsChosen = other.skillsChosen;
		livesRegain = other.livesRegain;
		patience = other.patience;
		skillpoints = other.skillpoints;
		rage = other.rage;
		strongspirit = other.strongspirit;
		strongspiritused = other.strongspiritused;
		lastWishPrevent = other.lastWishPrevent;
		isAlkaline = other.isAlkaline;
		crown = other.crown;
		wep = other.wep;
		bwep = other.bwep;
		cwep = other.cwep;
		wepmod1 = other.wepmod1;
		wepmod2 = other.wepmod2;
		wepmod3 = other.wepmod3;
		wepmod4 = other.wepmod4;
		bwepmod1 = other.bwepmod1;
		bwepmod2 = other.bwepmod2;
		bwepmod3 = other.bwepmod3;
		bwepmod4 = other.bwepmod4;
		cwepmod1 = other.cwepmod1;
		cwepmod2 = other.cwepmod2;
		cwepmod3 = other.cwepmod3;
		cwepmod4 = other.cwepmod4;
		bskin = other.bskin;
		spr_idle=other.spr_idle;
		spr_walk=other.spr_walk;
		spr_hurt=other.spr_hurt;
		spr_dead=other.spr_dead;
		my_health = 1;
		prevhealth = 1;
		scrWeaponHold();
		if skill_got[5]
		{
			my_health = maxhealth;
			prevhealth = maxhealth;
		}
		event_user(0);
		alarm[3] = 30;
	}
	else
	{
		with RerollStation
			instance_destroy();
		alarm[3]=max(50,8*boostLevel);//immunity
		snd_hurt = sndDamageNegate;
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
			amount = ceil((other.boostLevel-1)*0.5);
		}
	}
}
scrUnlockGameMode(25,"FOR GETTING RESURRECTED");


instance_destroy();

with GameRender {
	event_user(0);
}