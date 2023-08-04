if !instance_exists(GenCont)
{
do type = choose(1,2,3,4,5) until type != other.wep_type[other.wep] and type != other.wep_type[other.bwep]

other.ammo[type] += other.typ_ammo[type]*3
if other.ammo[type] > other.typ_amax[type] && !Player.ultra_got[26]
	other.ammo[type] = other.typ_amax[type]

scrChestOpenMindReload(other);
if (UberCont.opt_ammoicon)
{
	dir = instance_create(x,y,PopupText)
	dir.sprt = sprAmmoIconsPickup
	dir.ii = type-1;
	dir.mytext = "+"+string(other.typ_ammo[type]*3);
	if other.ammo[type] == other.typ_amax[type]
		dir.mytext = "MAX";
}
else
{
	dir = instance_create(x,y,PopupText)
	dir.mytext = "+"+string(other.typ_ammo[type]*3)+" "+string(other.typ_name[type])
	if other.ammo[type] == other.typ_amax[type]
		dir.mytext = "MAX "+string(other.typ_name[type])
}

snd_play(sndAmmoChest)
instance_destroy()
}

