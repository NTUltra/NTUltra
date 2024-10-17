/// @description Fire
sprite_index = spr_fire;
image_index = 0;
alarm[3] = image_number/image_speed;
snd_play(sndGhostFire,0.1);
with instance_create(x, y, PitGhostLaser) {
	raddrop = 0;
	countKill = false;
	motion_add(other.gunangle + 5, 1)
	if hspeed > 0
		right = 1;
	else
		right = -1;
	team = other.team
	walk = actTime;
	alarm[1] = actTime;
	existTime = 30;
	if instance_exists(Player) && Player.skill_got[29] {
		alarm[1] = 60
		scrGiveSnooze();
	}
}
with instance_create(x, y, PitGhostLaser) {
	raddrop = 0;
	countKill = false;
	motion_add(other.gunangle - 5, 1)
	team = other.team
	walk = actTime;
	alarm[1] = actTime;
	existTime = 30;
	if hspeed > 0
		right = 1;
	else
		right = -1;
	if instance_exists(Player) && Player.skill_got[29] {
		alarm[1] = 60
		scrGiveSnooze();
	}
}
walk = 0;