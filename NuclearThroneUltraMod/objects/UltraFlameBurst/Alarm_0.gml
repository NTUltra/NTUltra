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
with instance_create(x,y,UltraFlame)
{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(10)-5,10+random(3))
team = other.team
move_contact_solid(direction,14)}
}
repeat(2)
{
with instance_create(x,y,UltraFlame)
{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(10)-5+8,9+random(3))
team = other.team
move_contact_solid(direction,14)}
}

repeat(2)
{
with instance_create(x,y,UltraFlame)
{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(10)-5-8,9+random(3))
team = other.team
move_contact_solid(direction,14)}
}


BackCont.viewx2 += lengthdir_x(5,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(5,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 2
wkick = 6}


if ammo <= 0
instance_destroy()


