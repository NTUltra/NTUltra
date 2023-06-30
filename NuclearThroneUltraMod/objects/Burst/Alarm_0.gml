ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(snd)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+other.aimOffset+180+random(50)-25,2+random(2))
with instance_create(x,y,Bullet1)
{
	if other.ultramodded
		alarm[11] = 0;
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+other.aimOffset+(random(4)-2*other.accuracy),16)
	scrCopyWeaponMod(other);

image_angle = direction
team = other.team
}

BackCont.viewx2 += lengthdir_x(5,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(5,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 3
creator.wkick = 4}


if ammo <= 0
instance_destroy()

