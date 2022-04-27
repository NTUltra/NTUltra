ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y

//BackCont.viewx2 += lengthdir_x(14,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake
//BackCont.viewy2 += lengthdir_y(14,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake

wkick = -8

}


if ammo <= 0
instance_destroy()

