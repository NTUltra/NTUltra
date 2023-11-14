ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
repeat(projectileAmount)
{
	with instance_create(x,y,Bullet2)
	{
		motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(70)-35)*other.creator.accuracy,other.projectileSpeed+random(6.5))
		image_angle = direction
		team = other.team
		scrCopyWeaponMod(other);
	}
}

BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 8
creator.wkick = 7
}


if ammo <= 0
instance_destroy()


