ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
var hacc = accuracy * 0.5;
var acc = accuracy;
var aim = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
repeat(projectileAmount)
{
	with instance_create(x,y,Bullet2)
	{
		motion_add(aim+(random(acc)-hacc)*other.creator.accuracy,other.projectileSpeed+random(6))
		image_angle = direction
		team = other.team
		scrCopyWeaponMod(other);
	}
}
aim += 180;
BackCont.viewx2 += lengthdir_x(12,aim)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(12,aim)*UberCont.opt_shake
BackCont.shake += 8
creator.wkick = 7
with creator
{
	if object_index != Player || !skill_got[2]
	{
		scrMoveContactSolid(aim,1);
		motion_add(aim,1)
	}	
}
}


if ammo <= 0
instance_destroy()


