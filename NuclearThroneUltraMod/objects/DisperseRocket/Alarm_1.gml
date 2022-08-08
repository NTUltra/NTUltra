alarm[1]=time;
snd_play(sndRocket);
with instance_create(x,y,Rocket)
{motion_add(other.image_angle-90,2)
image_angle = direction
team = other.team
}

BackCont.viewx2 += lengthdir_x(5,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(5,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 4

