if ammo>0
{
	if team == 2
		scrRogueTarget();
	if random(2)<1 && target != noone && instance_exists(target)
	{
		gunangle = point_direction(x,y,target.x,target.y);
	}

	snd_play(sndEliteShielderFire)
	wkick = 6
	motion_add(gunangle+180,0.8)

	with instance_create(x,y,PopoPlasmaBall){
	motion_add(other.gunangle+random(40)-20,2)
	image_angle = direction
	team = other.team
	if team == 2
		sprite_index = sprPlasmaBall;}



	alarm[2] = 4
	ammo -= 1
}

