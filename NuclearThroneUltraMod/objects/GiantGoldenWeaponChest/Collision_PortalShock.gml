Player.nochest = 0
SetSeedWeapon();
repeat(25)//25 weps holy shit
{
with instance_create(x+random(32)-16,y+random(32)-16,WepPickup)
{
scrWeapons()
wep=scrDecideWep(6);
name = wep_name[wep]
ammo = 50
curse = 0
type = wep_type[wep]
sprite_index = wep_sprt[wep]
}
}
SetSeed();

snd_play(sndBigWeaponChest)
instance_destroy()

