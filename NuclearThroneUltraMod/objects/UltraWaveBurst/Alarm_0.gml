ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndWaveGun)

with instance_create(x,y,Bullet5)
{
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(4)-2+sin(other.ammo/2)*16,17)
image_angle = direction
team = other.team
if (instance_exists(Player))
    {
    
    if Player.race=11
    {
    speed*=1.18;
    }
    }
}
with instance_create(x,y,Bullet5)
{
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(4)-2-sin(other.ammo/2)*16,17)
image_angle = direction
team = other.team
if (instance_exists(Player))
    {
    
    if Player.race=11
    {
    speed*=1.18;
    }
    }
}

BackCont.viewx2 += lengthdir_x(2,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(2,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 2
creator.wkick = 7}


if ammo <= 0
instance_destroy()

