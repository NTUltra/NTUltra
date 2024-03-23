/// @description Crumple
with instance_create(x,y,PaperCrumble)
{
	motion_add(other.direction,max(8,other.speed - 4))
	image_angle = direction
	team = other.team
}
snd_play(sndPaperGunTransform,0.1);