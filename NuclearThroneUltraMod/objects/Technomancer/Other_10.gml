/// @description REVIVE
if instance_exists(Corpse)
{
	crp = instance_nearest(x,y,Corpse)
	if collision_line(x,y,crp.x,crp.y,Wall,0,0) < 0 || random(3) < 1
	{
		with crp
		{
			var nearestFloor = instance_nearest(x,y,Floor);
			instance_create(nearestFloor.x+16+random(16)-8,nearestFloor.y+16+random(16)-8,other.reviveToSpawn)
		}
		spr_idle = spr_fire2;
		spr_walk = spr_fire2;
		sprite_index = spr_fire2;
		image_index = 0;
		imageIndex = 0;
		snd_play(sndTechnomancerRevive);
		alarm[1] = image_number/image_speed + 8;
		if inverted
			alarm[1] -= 3;
	}
}