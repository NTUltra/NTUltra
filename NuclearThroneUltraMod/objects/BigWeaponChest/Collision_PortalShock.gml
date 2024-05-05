if !instance_exists(Player){exit;}
scrChestOpenMindReload(Player);	
Player.nochest = 0
repeat(1+Player.ultra_got[25]){//ROIDS ULTRA A DOUBLE WEPS
with instance_create(x-8,y,WepPickup)
{
scrWeapons()
wep=other.wep1;
name = wep_name[wep]
ammo = 50
curse = 0
type = wep_type[wep]
sprite_index = wep_sprt[wep]
}
with instance_create(x,y + 2,WepPickup)//WE INCLUDE THE SECOND WEAPON TO DUPLICATE
{
scrWeapons()
wep=other.wep2;
name = wep_name[wep]
ammo = 50
curse = 0
type = wep_type[wep]
sprite_index = wep_sprt[wep]
}
}
with instance_create(x+8,y,WepPickup)//THIS ONE IS SADLY NOT DUPLICATED CUS THAT BE OP
{
scrWeapons()
wep=other.wep3;
name = wep_name[wep]
ammo = 50
curse = 0
type = wep_type[wep]
sprite_index = wep_sprt[wep]
}
if heavyHeart
{
	with instance_create(x,y - 4,WepPickup)//THIS ONE IS SADLY NOT DUPLICATED CUS THAT BE OP
	{
	scrWeapons()
	wep=other.wep4;
	name = wep_name[wep]
	ammo = 50
	curse = 0
	type = wep_type[wep]
	sprite_index = wep_sprt[wep]
	direction = ang;
	speed = 1.5;
	}
}


snd_play(sndBigWeaponChest)
instance_destroy()

