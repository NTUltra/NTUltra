/// @description Collect AMMO
if !instance_exists(Player)
	exit;
//if max ammo?&&50% of time
with Player
{
	var pt = wep_type[wep];//primary ammo type
	var st = wep_type[bwep];//secondary ammo type
	var pa = ammo[pt];//primary ammo
	var sa = ammo[st];//secondary ammo
	var pam = typ_amax[pt];//primary max ammo
	var sam = typ_amax[st]//secondary max ammo
}
var ran = random(6);
if pa = pam or sa = sam && ran < 3
{
	if ran < 1
	{
		//Chance to top up weapon that is not full
		if (pa >= pam) && sa < sam
			type = st;
		else if (pa < pam) && sa == sam
			type = pt;
		else
			type = choose(1,2,3,4,5);
	}
	else
	{
		type = choose(1,2,3,4,5)
	}
}
else if Player.bwep != 0
{
	//Chance to give ammo which you need most
	if ran < 1
	{
		if pt == 0
		{
			type = st;
		}
		else if st == 0
		{
			type = pt;
		}
		else
		{
			var pap = pa/pam;//primary ammo percentage
			var sap = sa/sam;//secondary ammo percentage
			if pap < sap
			{
				type = pt;	
			}
			else
			{
				type = st;	
			}
		}
	}
	else
	{
		type = choose(pt,st)
	}
}
else
	type = pt

//Roids get loaded ultra
//if ( Player.ultra_got[26] && Player.wep!=0 )
//type = pt;

if type == 0 || Player.ammo[type] > Player.typ_amax[type]
type = choose(1,2,3,4,5);

extra = 0
//RUSH CROWN
if Player.crown = 4
extra = 1
if Player.race=12 && Player.skill_got[5]=0//Yung Cuz Passive
extra+=Player.typ_ammo[type]*(instance_number(YungCuzDupe)*0.5);
if Player.race=12 && Player.skill_got[5]=1//Yung Cuz Thronebutt
extra+=Player.typ_ammo[type]*(instance_number(YungCuzDupe));

if UberCont.opt_gamemode == 9 //Casual mode
	extra +=1;

var gain_multiplier = 1

if cursed
gain_multiplier += 0.5
if supercursed
gain_multiplier += 0.5

Player.ammo[type] += floor((Player.typ_ammo[type]+extra) * gain_multiplier)

if Player.ammo[type] > Player.typ_amax[type] && !Player.ultra_got[26]
	Player.ammo[type] = Player.typ_amax[type]

if (UberCont.opt_ammoicon)
{
	dir = instance_create(x,y,PopupText)
	dir.sprt = sprAmmoIconsPickup
	dir.ii = type-1;
	dir.mytext = "+"+string(floor((Player.typ_ammo[type]+extra) * gain_multiplier))//+string(Player.typ_name[type])
	if Player.ammo[type] == Player.typ_amax[type]
		dir.mytext = "MAX"//+string(Player.typ_name[type])
	
	snd_play(sndAmmoPickup)
}
else
{
	dir = instance_create(x,y,PopupText)
	dir.mytext = "+"+string(floor((Player.typ_ammo[type]+extra) * gain_multiplier))+" "+string(Player.typ_name[type])
	if Player.ammo[type] == Player.typ_amax[type]
		dir.mytext = "MAX "+string(Player.typ_name[type])

	snd_play(sndAmmoPickup)
}

instance_destroy()

instance_create(x,y,SmallChestPickup)

/*
ang = random(360)
repeat(10)
{
with instance_create(x,y,Bullet1)
{motion_add(Player.ang,12+random(4))
image_angle = direction
team =2}
ang += 36
}*/

/* */
/*  */
