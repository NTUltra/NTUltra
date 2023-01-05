if ammo > 0
{
snd_play(sndScorpionFire)
ammo -= 1
alarm[2] = 2
sprite_index = spr_fire
with instance_create(x,y,InvertedGraveyardSkeleton)
{
	existTime = 30;
	droprate = 0;
	alarm[1] = 5;
	raddrop = 0;
	countKill = false;
	motion_add(other.gunangle+random(40)-20,3+random(1))
	team = other.team
}
}
else
{
sprite_index = spr_idle
alarm[1] = actTime*3+random(actTime);
}

