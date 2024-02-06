/// @description infected
alarm[9]=7;
DealDamage(4)
sprite_index = spr_hurt
image_index = 0
motion_add(random(360),2)
snd_play(snd_hurt, hurt_pitch_variation)

repeat(4)
instance_create(x+lengthdir_x(10,random(360))+random(6)-3,
y+lengthdir_y(10,random(360))+random(6)-3,Curse)

