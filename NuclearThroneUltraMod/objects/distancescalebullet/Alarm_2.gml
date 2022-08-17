/// @description More dmg
alarm[2] = 1;
imagexscale *= 1.2;
imagexscale = min(imagexscale,2.5);
imageyscale = imagexscale;
dmg += 2;
speed = min(speed*2,18);
instance_create(x,y,Smoke);
snd_play(sndNadeAlmost,0.1,true,true,1,false,false,0.6);
if dmg >= 24
	alarm[2] = 0;