/// @description infected
alarm[9]=7;
if alarm[1] > 2
	alarm[1] += 3;
DealDamage(3 + GetPlayerLoops() + (my_health * 0.01))
sprite_index = spr_hurt
image_index = 0
motion_add(random(360),2)
snd_play(snd_hurt, hurt_pitch_variation)

repeat(4)
instance_create(x+lengthdir_x(10,random(360))+random(6)-3,
y+lengthdir_y(10,random(360))+random(6)-3,Curse)

