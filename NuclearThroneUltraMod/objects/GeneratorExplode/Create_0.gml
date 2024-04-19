/// @description Initialize boomm sequence
snd_play(sndExplosionXL);
alarm[0] = 1;
alarm[1] = 3;
alarm[2] = 8;
alarm[3] = 14;
alarm[4] = 18;
team = -1;
if instance_exists(NuclearThrone1)
	team = NuclearThrone1.team;
with instance_create(x,y,GreenExplosion)
	team = other.team;
l = 32;
ang = random(360);
angstep = 120;