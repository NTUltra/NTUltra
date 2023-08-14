ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(snd);
var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
with instance_create(x+lengthdir_x(6,aimDirection),y+lengthdir_y(6,aimDirection),BloodPlasmaBall)
{
	if other.ultramodded
		alarm[11] = 0;
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+other.aimOffset+(random(6)-3*other.accuracy),16)
	image_angle = direction
	team = other.team
	scrCopyWeaponMod(other);
}
if (aimOffset == 0)
{
	aimOffset = maxAngle * aimDir;
}
else if (aimOffset == maxAngle * aimDir)
{
	aimOffset = maxAngle * aimDir * -1;
}
else
{
	aimOffset = 0;
	aimDir *= -1;
}
BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 3
creator.wkick = 5
}


if ammo <= 0
instance_destroy()

