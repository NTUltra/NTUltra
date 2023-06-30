ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndMachinegun)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180+random(50)-25,2+random(2))

with instance_create(x,y,Bullet8)
{
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(4)-2,8)
image_angle = direction
team = other.team
	scrCopyWeaponMod(other);

}

BackCont.viewx2 += lengthdir_x(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 2
creator.wkick = 3}


if ammo <= 0
instance_destroy()

