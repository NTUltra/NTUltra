alarm[1]=time;
snd_play(sndGrenadeRifle,0.2);
with instance_create(x,y,SmallGrenade)
{motion_add(other.image_angle-90,9)
image_angle = direction
team = other.team
}

BackCont.viewx2 += lengthdir_x(2,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(2,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 1

