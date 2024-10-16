if ammo>0
{
	snd_play(sndGruntFire)
	wkick = 5
	var dis = 500;
	if team != 2 && target != noone && instance_exists(target)
	{
		dis = point_distance(x,y,target.x,target.y);
	}
	motion_add(gunangle+180,0.5)
	with instance_create(x,y,IDPDBullet){
	motion_add(other.gunangle+random(20)-10,other.projectileSpeed)
	image_angle = direction
	team = other.team
	if team == 2
	{
		sprite_index = sprIDPDBulletRogue;
		RecycleGlandType();
	}}
	if dis > 400
		alarm[2] = 7;
	else
		alarm[2] = 3
	ammo -= 1
}
else
{
	alarm[1] += 6;
}

