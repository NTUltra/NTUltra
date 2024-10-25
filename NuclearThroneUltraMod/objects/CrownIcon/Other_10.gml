/// @description Click me
with UberCont///UNLOCK CROWN
{
	crown_used[other.crown] += 1;
	scrSave();
}
var usedRandom = false;
if keeper
{
	Player.crownpoints -= 1
}
else {
if crown = 0
{
	usedRandom = true;
	do {
		crown = 2 + irandom(crownmax + secretcrownmax - 3)
	} until (crown != 43)//Not crown of the frog
}
oldcrown = 1;

if (UberCont.canMultiCrown)
{
	if crown == 1
	{
		var al = array_length(Player.crown);
		for (var i = 0; i < al; i++) {
			scrRemoveCrown(Player.crown[i]);	
		}
		Player.crown = [1];
		with Crown
			instance_destroy();
		Player.crownpoints -= 1;
	}
	else if scrIsCrown(crown)
	{
		var al = array_length(Player.crown);
		//Remove
		for (var i = 0; i < al; i++) {
			if (Player.crown[i] == crown)
			{
				array_delete(Player.crown,i,1);
				i = al;
			}
		}
		with Crown
		{
			if crown == other.crown
				instance_destroy();
		}
		canReAdd = true;
		oldcrown = crown;
		crown = 1;
	}
	else {
		//Add
		Player.crown[array_length(Player.crown)] = crown;
		if Player.race == 18 && array_length(Player.crown) > 2
		{
			scrUnlockCSkin(18,"FOR EQUIPPING THREE CROWNS AS ONCE#AS ANGEL");
		}
		if !canReAdd
			Player.crownpoints -= 1
	}
}
else
{
	if array_length(Player.crown) > 0
		oldcrown = Player.crown[0];
	with Crown
		instance_destroy();
	Player.crown = [crown]
	Player.crownpoints -= 1
}
//RESET INVERTED CHANCE
with Player
{
    invertedchance = 10;
	if race == 27
		invertedchance = 25;
}
with UberCont
{
	if usedRandom
		ctot_crown_taken[Player.race,0] += 1;
	ctot_crown_taken[Player.race,other.crown] += 1;
	var firstCrown = false;
	if UberCont.ctot_all_crowns_taken[Player.race] == 0
	{
		firstCrown = true;
	}
	scrSave();
	if firstCrown && UberCont.ctot_all_crowns_taken[Player.race] == 1
	{
		with instance_create(x,y,UnlockPopup)
		{
			mytext="CROWN START UNLOCKED FOR#" + UberCont.race_name[Player.race];
		}
	}
}
//UNDO STUFF
scrRemoveCrown(oldcrown);

//CROWN OF LIFE
if crown == 2 && !canReAdd
{
	with UberCont
		hasTakenCrownOfLife = true;
	with Player
	{/*
		if my_health >= maxhealth
		{
			my_health = max(my_health,maxhealth);
			my_health += 1;
		}
		else
		{*/
			if ultra_got[62] && altUltra
			{
				armour = max(armour,floor(maxarmour*0.5));
			}
			else
			{
				my_health = max(my_health,maxhealth);
			}
		//}
	}
	/*
	var toHeal = Player.maxhealth - min(Player.my_health,Player.maxhealth);
	var overheal = (Player.maxhealth - toHeal);
	Player.my_health = max(Player.maxhealth,Player.my_health + overheal);
	*/
}
if crown == 36
	UberCont.hasTakenCrownOfStability = true;
if crown == 41
	UberCont.hasTakenCrownOfMediocrity = true;
if crown == 38
	UberCont.hasTakenCrownOfAbundance = true;
if crown == 42
	UberCont.hasTakenCrownOfScarcity = true;
if crown == 40
{
	with Player
	{
		ammo[0] = round(max(ammo[0],round(typ_ammo[0]*2)));
		scrUnlockCharacter(9,"USING THE SECRET CROWN OF A THOUSAND CUTS")
	}
}
if crown == 34
{
	if Player.skill_got[5]
		Player.rewinds = 2;
	else
		Player.rewinds = 1;
	with TimeRewinder
		instance_destroy();
	with UberCont
	{
		if !useSeed && seed == 0
			seed = irandom(4294967295);
		useSeed = true;
	}
	with instance_create(x,y,TimeRewinder) {
		rewinds = Player.rewinds;
		my_health = Player.my_health;
		maxhealth = Player.maxhealth;
		ammo = Player.ammo;
		area = Player.lastarea;
		subarea = Player.lastsubarea;
		lastarea = Player.lastarea;
		lastsubarea = Player.lastsubarea;
		hard = Player.hard;
		oasis = Player.oasis;
		inverted = Player.inverted;
		freeAmmoRound = Player.freeAmmoRound;
		fromCribToVault = Player.fromCribToVault;
	}
}
//CROWN OF DESTINY
if crown == 8 && !Player.tookDestiny
{
	with Player
	{
		var maxAvailable = clamp(maxlevel - level,0,2);
		skillpoints += maxAvailable
		level += maxAvailable;
		//skillsChosen -= 1;
		tookDestiny = true;
	}
}
//CROWN OF DEATH
if crown == 3 && Player.maxhealth > 1
{
	if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
	{
		Player.maxarmour -= 1	
	}
	else
	{
		Player.maxhealth -= 1
		UberCont.maxHpIncrease --;
	}
}
//CROWN OF PROTECTION
if crown == 20
{
	with UberCont
		hasTakenCrownOfProtection = true;
	with Player {
		//if maxarmour < 1
		//	gotMinimumArmour = true;
		canCrownOfProtection = 0;
		//not Living armour
		UberCont.maxHpIncrease --;
		if !(instance_exists(Player) && Player.ultra_got[62] && Player.altUltra)
		{
			maxarmour += 1;//max(maxarmour, 1);
			maxhealth -= 1;
			maxhealth = max(1,maxhealth);
			armour = clamp(armour, 0, maxarmour);
			scrUnlockCharacter(16,"FOR GAINING ARMOUR#ARMOUR PREVENTS#ONE FULL HIT OF DAMAGE!")
		}
	}
}
//CROWN OF MERCENARY
if crown == 30
{
	if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
	{
		Player.maxarmour += 1;
		Player.armour += 1;	
	}
	else
	{
		Player.maxhealth += 1
		if Player.my_health < Player.maxhealth
			Player.my_health += 1;
		UberCont.maxHpIncrease += 1;
	}
}
//CROWN OF BOUNTY
if crown == 31
{
	if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//Living armour
	{
		Player.maxarmour = max(1,Player.maxarmour - 2);
		UberCont.maxHpIncrease = max(1,UberCont.maxHpIncrease - 2);
	}
	else
	{
		Player.maxhealth = max(1,Player.maxhealth - 2);
		UberCont.maxHpIncrease = max(0,UberCont.maxHpIncrease - 2);
	}
}

if crown!=4//not crown of haste
Player.rushcrownlevels=0;

if crown != 25
{
	with PlayerAlarms
	{
		alarm[5] = 0;	
	}
}

//CROWN OF REINCARNATION
if crown == 11
{
	var hasReachedUltra = false;
	var gotTheRegal = false;
	with Player
	{
		if skill_got[maxskill + 1]
		{
			gotTheRegal = true;
		}
		skeletonlives=0;
		reincarnate = true;
		crownpoints = 0;
		var boost = max(boostLevel, level);
		var pw = wep;
		var bw = bwep;
		var cw = cwep;
		//MODIFIERS!
		var wp1 = wepmod1;
		var wp2 = wepmod2;
		var wp3 = wepmod3;
		//BMODIFIERS!
		var wb1 = bwepmod1;
		var wb2 = bwepmod2;
		var wb3 = bwepmod3;
		//CMODIFIERS!
		var wc1 = cwepmod1;
		var wc2 = cwepmod2;
		var wc3 = cwepmod3;
		var wpu = weaponspickedup;
			
		var rngloop = rnglevelloop;
		var disableAltU = disableAltUltra;
		if level > 9
			hasReachedUltra = true;
		instance_destroy();
	}
	UberCont.canPickFrogCrown = false;
	scrUnlockGameMode(25,"FOR GETTING RESURRECTED");
	with WepPickup
	instance_destroy();

	with Corpse
	instance_destroy();
	with CorpseCollector
	{
		ds_list_clear(corpses);	
	}

	instance_create(x,y,Player);
	with Player//Data to keep
	{
		if gotTheRegal
			skill_got[maxskill + 1] = 1;
		crownpoints = 0;
		disableAltUltra = disableAltU;
		rnglevelloop = rngloop;
		weaponspickedup = wpu;
		freeAmmoRound = 1;
		ultimategamble = true;
		race = other.race
		crown = [11];
		lastarea = other.lastarea;
		lastwishused = false;
		area = other.area//other.lastarea;
		loops = other.loops;
		hard = other.hard;
		kills = other.kills;
		subarea=other.subarea;
		boostLevel = boost;
	
		wep = pw;
		bwep = bw;
		cwep = cw;
	
		wepmod1 = wp1;
		wepmod2 = wp2;
		wepmod3 = wp3;
	
		bwepmod1 = wb1;
		bwepmod2 = wb2;
		bwepmod3 = wb3;
	
		cwepmod1 = wc1;
		cwepmod2 = wc2;
		cwepmod3 = wc3;
	
		//give the ammos
		ammo[1] = typ_amax[1];
		ammo[2] = typ_amax[2];
		ammo[3] = typ_amax[3];
		ammo[4] = typ_amax[4];
		ammo[5] = typ_amax[5];
	
		scrWeaponHold();
		if !disableAltUltra
			unlockAlternativeUltras = hasReachedUltra;
		//event_perform(ev_other,ev_room_end);
	}
	/*with instance_create(x,y,GenCont)
	{race = other.race
	crown = other.crown}*/
}
if crown == 43//FROG
{
	//if !scrIsGamemode(26) && !scrIsGamemode(27) && !scrIsGamemode(37) && UberCont.canPickFrogCrown
	//{
		//FROG
		with Player
		{
			hard += 2;
			rad = max(rad,GetPlayerMaxRad()) + 1;
			if area == 100
				lastarea = 2;
			else
				area = 2
		}
	//}	
}

//CROWN OF INVERSION
if crown == 12
{
	with Player
	{
		invertedchance = 80;
		if race == 27
			invertedchance = 100;
	}
}
//Crown of drowning
if crown == 13
{
	with Player {
		scrWeaponAdjustCost(2);
		ammo[1] += 50;
		ammo[2] += 5;
		ammo[3] += 5;
		ammo[4] += 5;
		ammo[5] += 5;
		if !ultra_got[26] {
			if ammo[1] > typ_amax[1]
			ammo[1] = typ_amax[1]

			if ammo[2] > typ_amax[2]
			ammo[2] = typ_amax[2]

			if ammo[3] > typ_amax[3]
			ammo[3] = typ_amax[3]

			if ammo[4] > typ_amax[4]
			ammo[4] = typ_amax[4]

			if ammo[5] > typ_amax[5]
			ammo[5] = typ_amax[5]
		}
	}
}

if crown == 16
{
	with BackCont
	{
		wantVanAmount++;
	}
}

if crown == 23
{
	//Crown of speed
	Player.pSpeedBoost += 0.12;
	Player.maxSpeed += 0.25;
}

if crown == 24
{
	//Crown of sloth
	Player.pSpeedBoost -= 0.15;
	Player.maxSpeed -= 0.37;
}
if crown == 28
{
	//Crown of apocalypse
	scrUnlockGameMode(39,"FOR FINDING THE SECRET#CROWN OF APOCALYPSE");
}

}
with CrownIcon
instance_destroy()

with LevCont
instance_destroy()

if Player.crownpoints > 0 or Player.skillpoints > 0
{
	instance_create(x,y,LevCont);
}
else if !instance_exists(GenCont)
{
	with instance_create(x,y,GenCont)
		race = Player.race
}

snd_play_2d(sndCrownRandom)
var xx = x;
var yy = y;
with FakeCrown
{
	xx = x;
	yy = y;
	instance_destroy();
}
if crown != 1
{
	with  Crown
	{
		if crown == other.crown
			instance_destroy();
	}
	scrSpawnCrown(xx,yy,crown, canReAdd)
}
with UberCont
	canPickFrogCrown = false;