/// @description Start fire sequence
ammo = maxAmmo
alarm[2] = tellTime
snd_play(sndLaserCrystalCharge);
gunangle = point_direction(x,y,target.x,target.y)
sprite_index = spr_fire
alarm[1] = 50;
with UltraCrystal
{
	alarm[1] += actTime;
}