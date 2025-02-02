/// @description Hit
if bigDamage
	with instance_create(x,y,BulletHit)
	{
		motion_add(other.direction,1);
		sprite_index = sprVoidBulletHit;	
	}
else
	with instance_create(x,y,BulletHit)
	{
		motion_add(other.direction,1);
		sprite_index = sprVoidPistolBulletHit;
	}