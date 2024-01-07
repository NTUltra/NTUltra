/// @description Start fire sequence
ammo = maxAmmo
alarm[2] = tellTime
snd_play(sndLaserCrystalCharge)
gunangle = point_direction(x,y,target.x,target.y)
sprite_index = spr_fire
alarm[1] = 70+random(10)
if loops>0
	alarm[1] = 60+random(30);
