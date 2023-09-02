ammo -= projectileAmount

alarm[0] = time


if instance_exists(creator)
{
var xx;
var yy;
xx=creator.x;
yy=creator.y;

//FIRING
repeat(projectileAmount) {
		with instance_create(x,y,Bullet2)
		{
			motion_add(point_direction(x,y,other.mox,other.moy),12+other.boost)
			image_angle = direction
			team = other.team
			scrCopyWeaponMod(other);
		}
		boost+= 0.5;
	}
}
if ammo < 1
	instance_destroy()