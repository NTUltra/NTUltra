/// @description Initialize boomm sequence
snd_play(sndExplosionXL);
alarm[0] = 2;
alarm[1] = 4;
instance_create(x,y,GreenExplosion);
l = 28;
ang = random(360);
angstep = 120;
team = -1