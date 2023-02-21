if !instance_exists(GenCont)
{
scrChestAbsorbingPores(other);
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
with instance_create(x,y,WepPickup)//WE INCLUDE THE SECOND WEAPON TO DUPLICATE
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


snd_play(sndBigWeaponChest)
if !audio_is_playing(Player.snd_chst)
	snd_play(Player.snd_chst)
instance_destroy()
}



