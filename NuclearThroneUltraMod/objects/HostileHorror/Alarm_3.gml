/// @description Shoot
scrTarget()
if target != noone && collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
	if mySound == noone || !instance_exists(mySound)
	{
		with mySound
			instance_destroy();
		mySound = snd_play(sndHorrorLoop,
		0,false,true,2,false,false,0.8,true,id);
	}
	gunangle += angle_difference(point_direction(x, y, target.x, target.y),gunangle) * aimLerp;
	consecutiveShots += 1;
	if target.x < x
		right = -1
	else if target.x > x
		right = 1
	radAmmo -= 1;
	with instance_create(x, y, HostileHorrorBullet) {
	    motion_add(other.gunangle, other.projectileSpeed);
	    image_angle = direction;
	    team = other.team
	}
	var msk = mask_index;
	mask_index = mskBigWepPickup;
	var walls = ds_list_create();
	var al = instance_place_list(x,y,Wall,walls,false)
	for (var i = 0; i < al; i++)
	{
		with walls[| i] {
			instance_destroy();
			instance_create(x,y,FloorExplo);
		}
	}
	ds_list_destroy(walls);
	if al > 0
	{
		motion_add(gunangle,acc);
		walk = max(walk,fireRate);
	}
	mask_index = msk;
	if radAmmo > 0
		alarm[3] = fireRate;
	else
	{
		event_user(0);
		snd_play(sndHorrorEmpty);
	}
}
else
{
	event_user(0);
}