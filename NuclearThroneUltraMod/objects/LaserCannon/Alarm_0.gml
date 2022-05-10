ammo -= 1

alarm[0] = time
image_xscale /= 2
image_yscale /= 2


if instance_exists(creator)
{
x = creator.x+lengthdir_x(16,point_direction(creator.x,creator.y,UberCont.mouse__x,UberCont.mouse__y))
y = creator.y+lengthdir_y(16,point_direction(creator.x,creator.y,UberCont.mouse__x,UberCont.mouse__y))
//FIRING
snd_play(sndLaser)


with instance_create(x,y,Laser)
{image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
team = other.team
event_perform(ev_alarm,0)}

BackCont.viewx2 += lengthdir_x(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 2
creator.wkick = 5}


if ammo <= 0
instance_destroy()

