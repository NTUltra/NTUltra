ammo -= 4

alarm[0] = time


if instance_exists(creator)
{
	var xx;
	var yy;
	xx=creator.x;
	yy=creator.y;

	//FIRING
	repeat(2)
	{
		with instance_create(x,y,EnemyBullet3)
		{
			motion_add(point_direction(x,y,other.mox,other.moy),8 + other.boost)
			image_angle = direction
			team = other.team
			scrCopyWeaponMod(other);
		}
		boost += 0.6;
	}
}

if ammo < 1
	instance_destroy()