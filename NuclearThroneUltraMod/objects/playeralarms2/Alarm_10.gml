/// @description Spawn flames on projectiles
alarm[10] = 6;
with projectile
{
	if team == 2 && wepFire != -1
	{
		//var n = instance_nearest(x,y,Flame)
		//if n == noone || distance_to_object(n) > 32
		with instance_create(x,y,Flame)
		{
			wepFire = -1;
			dmg --;
			image_xscale -= 0.2;
			image_yscale -= 0.2;
			image_speed += 0.35;
			//alarm[1] = 1;
			direction = other.direction;
			speed = other.speed * 0.5;
			team = other.team
		}
	}
}