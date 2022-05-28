/// @description More dmg
alarm[2] = 2;
image_xscale *= 1.2;
image_xscale = min(image_xscale,2.5);
image_yscale = image_xscale;
dmg += 2;
speed = min(speed*1.5,18);
instance_create(x,y,Smoke);
snd_play(sndNadeAlmost);