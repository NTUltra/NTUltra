snd_play(sndShotgun)
if instance_exists(Player) && instance_exists(creator)
{
repeat(ceil(rate*1.6))
{
with instance_create(x,y,Bullet2)
{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(50)-25)*other.creator.accuracy,12+random(6))
image_angle = direction
team = other.team
}
}

BackCont.viewx2 += lengthdir_x(4+rate,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(4+rate,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += rate
if rate>12
rate=12;

creator.wkick = rate
}

audio_stop_sound(sndCharge);

