/// @description Start fire sequence
ammo = maxAmmo
alarm[2] = tellTime
snd_play(sndLaserCrystalCharge)
gunangle = point_direction(x,y,target.x,target.y);
sprite_index = spr_fire
if loops > 1
	alarm[1] = 30;
else
	alarm[1] = 40+random(10)