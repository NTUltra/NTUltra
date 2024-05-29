/// @description 2 frame delay
snd_play(sndGruntFire)

with instance_create(x,y,PopoSlug)
{motion_add(other.gunangle+random(12)-6,other.projectileSpeed)
image_angle = direction
team = other.team
if team == 2
	sprite_index = sprPopoSlugRogue}