if KeyCont.key_fire[p] = 1 and (UberCont.mouse__x < x+10 and UberCont.mouse__y < y+16 and UberCont.mouse__x > x-10 and UberCont.mouse__y > y-16)
{
    with UberCont///UNLOCK CROWN
    {
    crown_used[other.crown]=1;
    scrSave();
    }
var usedRandom = false;
if crown = 0
{
	usedRandom = true;
	crown = ceil(irandom(crownmax)+1)//Includes 24 crown of sloth
}

oldcrown = Player.crown
Player.crown = crown
Player.crownpoints -= 1

//RESET INVERTED CHANCE
    with Player
    {
        invertedchance = 8;
		if race == 27
			invertedchance = 20;
    }


    
//NONE
if crown = 1
{
	with Crown
		instance_destroy()
}
with UberCont
{
	if usedRandom
		ctot_crown_taken[Player.race,0] ++;
	ctot_crown_taken[Player.race,other.crown] ++;
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

//CROWN OF DESTINY
//if oldcrown = 8 
//Player.skillpoints -= 1
//CROWN OF DEATH
if oldcrown = 3
{
Player.maxhealth += 1
UberCont.maxHpIncrease ++;
}

//DO STUFF


if scrUsedEveryCrown()
{
with Player
scrUnlockBSkin(18,"FOR TRYING EVERY CROWN",0);
}
//CROWN OF LIFE
if crown == 2
{
	with Player
	{
		if my_health >= maxhealth
		{
			my_health = max(my_health,maxhealth);
			my_health += 2;
		}
		else
		{
			my_health = max(my_health,maxhealth);
		}
	}
	/*
	var toHeal = Player.maxhealth - min(Player.my_health,Player.maxhealth);
	var overheal = (Player.maxhealth - toHeal);
	Player.my_health = max(Player.maxhealth,Player.my_health + overheal);
	*/
}
//CROWN OF DESTINY
if crown = 8 && !Player.tookDestiny
{
	Player.skillpoints += 1
	Player.skillsChosen -= 1;
	Player.tookDestiny = true;
}
//CROWN OF DEATH
if crown = 3 && Player.maxhealth > 1
{
Player.maxhealth -= 1
UberCont.maxHpIncrease --;
}

if crown!=4//not crown of haste
Player.rushcrownlevels=0;

//CROWN OF DECAY
if crown == 6
Player.decay = 300


//CROWN OF REINCARNATION
if crown==11 && Player.crownvisits > 0
{
	with Player
	{
		skeletonlives=0;
		reincarnate = true;
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
		instance_destroy();
	}
	scrUnlockGameMode(25,"FOR GETTING RESURRECTED");
with WepPickup
instance_destroy();

with Corpse
instance_destroy();

instance_create(x,y,Player);

with Player//Data to keep
{
	ultimategamble = true;
	race = other.race
	crown = other.crown
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
	//event_perform(ev_other,ev_room_end);
}
/*with instance_create(x,y,GenCont)
{race = other.race
crown = other.crown}*/

}

//CROWN OF INVERSION
if crown==12
{
    with Player
    {
		invertedchance = 70;
		if race == 27
			invertedchance = 90;
    }
}
//Crown of popo
if oldcrown == 16
{
	with BackCont
	{
		wantVanAmount --;	
	}
}
if crown == 16
{
	with BackCont
	{
		wantVanAmount++;
	}
}
if oldcrown == 23
{
	//Crown of speed
	Player.pSpeedBoost -= 0.12;
	Player.maxspeed -= 0.25;
}
if crown == 23
{
	//Crown of speed
	Player.pSpeedBoost += 0.12;
	Player.maxspeed += 0.25;
}
if oldcrown == 24
{
	//Crown of sloth
	Player.pSpeedBoost += 0.12;
	Player.maxspeed += 0.25;
}
if crown == 24
{
	//Crown of sloth
	Player.pSpeedBoost -= 0.12;
	Player.maxspeed -= 0.25;
}
with CrownIcon
instance_destroy()

with LevCont
instance_destroy()

if Player.crownpoints > 0 or Player.skillpoints > 0//&& Player.ultra_got[0]=0
{
instance_create(x,y,LevCont)
}
else
{
with instance_create(x,y,GenCont)
race = Player.race
}

snd_play_2d(sndCrownRandom)
with Crown
{
	scrCrownAnimation(other.crown);	
}
}

