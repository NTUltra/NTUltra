/// @description Initialize boomm sequence
snd_play(sndExplosionXL);
alarm[0] = 6+1;
alarm[1] = 6+4;
alarm[2] = 6+9;
alarm[3] = 6+15;
alarm[4] = 6+19;
team = -1;
if instance_exists(NuclearThrone1)
	team = NuclearThrone1.team;
with instance_create(x,y,GreenExplosion)
	team = other.team;
l = 32;
ang = random(360);
angstep = 120;