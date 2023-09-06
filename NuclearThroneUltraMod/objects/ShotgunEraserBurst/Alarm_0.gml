ammo -= 1;

alarm[0] = time


if instance_exists(creator)
{
	x = creator.x;
	y = creator.y;
}

//FIRING
var sd = sign(angDir) * -1;
var ang = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y) + (angle * angDir);
repeat(projectileAmount) {
	with instance_create(x,y,Bullet7)
	{
		motion_add(ang,11+other.boost)
		image_angle = direction
		team = other.team
		scrCopyWeaponMod(other);
	}
	boost += 0.5;
	ang += angleStep * sd;
}
boost -= projectileAmount*0.5;
angDir *= -1;
if ammo % 2 == 0
	boost -= 1;
if ammo < 1
	instance_destroy()