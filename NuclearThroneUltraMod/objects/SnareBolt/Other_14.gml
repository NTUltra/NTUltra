/// @description Pierce

// Inherit the parent event
event_inherited();
snd_play(sndTinySnare,0.1);
with instance_create(x + hspeed,y + vspeed,TemporarySnare) {
	alarm[0] -= 20;
}