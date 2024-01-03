/// @description Toxic
alarm[1] = 2;
snd_play(choose(sndFrost1,sndFrost2),0.1,true);
with instance_create(x,y,IceFlame) {
	team = other.team;
}