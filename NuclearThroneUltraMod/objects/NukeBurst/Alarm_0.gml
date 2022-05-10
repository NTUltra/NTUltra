ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y-4+(ammo*4)//-4+8=4 -4+4=0 -4+0=-4
//FIRING
snd_play_fire(sndNukeFire)


with instance_create(x,y,Nuke)
{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(4)-2),2)
image_angle = direction
team = other.team
}

BackCont.viewx2 += lengthdir_x(55,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(55,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 12
creator.wkick = 20
}


if ammo <= 0
instance_destroy()

