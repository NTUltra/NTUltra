ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
//snd_play(sndJackHammer)
//FIRING

repeat(2)
{
with instance_create(x,y,ToxicThrowerGas)
{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(10)-5,7+random(3))
//team = other.team
move_contact_solid(direction,8)}
}

BackCont.viewx2 += lengthdir_x(1,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(1,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 0.8;
wkick = 2}


if ammo <= 0
instance_destroy()


