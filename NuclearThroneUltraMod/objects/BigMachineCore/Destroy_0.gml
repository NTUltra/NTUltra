/// @description Disable power on big machine
// Inherit the parent event
event_inherited();

with myBody {
	snd_play(sndBigMachineLowHP);
	alarm[1] = 0;
	ammo = 0;
	maxAmmo = 0;
	alarm[4] = 0;
	alarm[5] = 0;
	alarm[3] = 0;
	alarm[2] = 0;
	alarm[7] = 0;
	spr_idle=spr_become_close;
	spr_walk=spr_become_close;
	spr_hurt = spr_hurt_closed
	image_index=0;
	alarm[8] = sprite_get_number(spr_idle)/image_speed;
	my_health -= (other.maxhealth - 40);
	sprite_index = spr_hurt;
	image_index = 0;
}