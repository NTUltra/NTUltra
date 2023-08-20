/// @description Charge
sprite_index = spr_walk;
snd_play(sndCursedOasisBossTackle);
motion_add(other.gunangle, dashStart);
image_angle = direction
walk = dashDuration;
alarm[1] += walk;
if hspeed > 0
	right = 1
else if hspeed < 0
	right = -1