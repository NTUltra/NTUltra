/// @description Start spin attack
alarm[1] = 15
snd_play(sndBigDogSpin)
ammo = 10+10*(1-(my_health/maxhealth))
turn = choose(1,-1)
walk = 0
image_index = 0
spr_idle = spr_charge;
sprite_index = spr_idle
speed = 0