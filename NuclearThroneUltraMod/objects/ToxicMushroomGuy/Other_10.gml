/// @description Fire Gass
snd_play(sndToxicBoltGas)
gunangle = point_direction(x, y, target.x, target.y)
with instance_create(x, y, SmallGassBullet) {
	motion_add(other.gunangle, 4)
	image_angle = direction
	team = other.team
}
wkick = 4
alarm[1] += 5;