ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
with instance_create(x,y,Bullet3)
{
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(4)-2+sin(other.ammo/2)*16,8)
image_angle = direction
team = other.team
scrCopyWeaponMod(other);
}
with instance_create(x,y,Bullet3)
{
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(4)-2-sin(other.ammo/2)*16,8)
image_angle = direction
team = other.team
scrCopyWeaponMod(other);
}

BackCont.viewx2 += lengthdir_x(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 3
creator.wkick = 7}


if ammo <= 0
instance_destroy()

