/// @description Fire
sprite_index = spr_fire;
image_index = 0;
alarm[3] = image_number/image_speed;
snd_play(sndGhostFire,0.1)
with instance_create(x, y, PitGhostLaser) {
	raddrop = 0;
    motion_add(other.gunangle + 5, 1)
    image_angle = direction
    team = other.team
	walk = actTime;
	alarm[1] = actTime;
	existTime = 30;
}
with instance_create(x, y, PitGhostLaser) {
	raddrop = 0;
    motion_add(other.gunangle - 5, 1)
    image_angle = direction
    team = other.team
	walk = actTime;
	alarm[1] = actTime;
	existTime = 30;
}
walk = 0;