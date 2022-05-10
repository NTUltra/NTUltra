alarm[0] = time

if instance_exists(creator)
{
//x = creator.x
//y = creator.y
//FIRING
snd_play_fire(sndMachinegun)
repeat(rate)
{
ammo -= 1
with instance_create(x,y,Bullet7)
{motion_add(other.Direction+(random(10)-5)+((other.ammo*10)-(other.totalammo*5))*other.creator.accuracy,9+random(6))
image_angle = direction
team = other.team



if (instance_exists(Player))//HUNTER
    {
    
    if Player.race=11
    {
    if team=2
    speed*=1.18;
    }
    }

}
}
BackCont.viewx2 += lengthdir_x(1,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(1,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 2
//wkick = 2
}


if ammo <= 0
instance_destroy()


