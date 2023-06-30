ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play(sndSwarmRapid,0.2,true,false,1,false,false,0.7);



with instance_create(x,y,SwarmBolt)
{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(40)-20),2+random(3))
image_angle = direction
scrCopyWeaponMod(other);
team = other.team
}


BackCont.viewx2 += lengthdir_x(1,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(1,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 1
creator.wkick = 4
}


if ammo <= 0
instance_destroy()

